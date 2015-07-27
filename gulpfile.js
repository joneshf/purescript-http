'use strict'

var gulp        = require('gulp')
  , bump        = require('gulp-bump')
  , filter      = require('gulp-filter')
  , git         = require('gulp-git')
  , purescript  = require('gulp-purescript')
  , runSequence = require('run-sequence')
  , tagVersion  = require('gulp-tag-version')
  ;

var paths =
    { src: 'src/**/*.purs'
    , bowerFFIJs: [ 'bower_components/purescript-*/src/**/*.js'
                  ]
    , bowerSrc: [ 'bower_components/purescript-*/src/**/*.purs'
                ]
    , dest: ''
    , docgen: { 'Network.HTTP': 'docs/Network/HTTP.md'
              }
    , ffi: 'src/**/*.js'
    , manifests: [ 'bower.json'
                 , 'package.json'
                 ]
    };

function bumpType(type) {
    return gulp.src(paths.manifests)
        .pipe(bump({type: type}))
        .pipe(gulp.dest('./'));
}

gulp.task('tag', function() {
    return gulp.src(paths.manifests)
        .pipe(git.commit('Update versions.'))
        .pipe(filter('bower.json'))
        .pipe(tagVersion());
});

gulp.task('bump-major', function() {
    return bumpType('major')
});
gulp.task('bump-minor', function() {
    return bumpType('minor')
});
gulp.task('bump-patch', function() {
    return bumpType('patch')
});

gulp.task('bump-tag-major', function() {
    return runSequence('bump-major', 'tag');
});
gulp.task('bump-tag-minor', function() {
    return runSequence('bump-minor', 'tag');
});
gulp.task('bump-tag-patch', function() {
    return runSequence('bump-patch', 'tag');
});

gulp.task('psc', function() {
    return purescript.psc({
        src: paths.bowerSrc.concat(paths.src),
        ffi: paths.bowerFFIJs.concat(paths.ffi)
    });
});

gulp.task('docs', function() {
    return purescript.pscDocs({
        src: paths.bowerSrc.concat(paths.src),
        docgen: paths.docgen
    });
});

gulp.task('watch', function() {
    gulp.watch([paths.src], function() {
      return runSequence('psc', 'docs')
    });
});

gulp.task('default', function() {
  return runSequence('psc', 'docs')
});
