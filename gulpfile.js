'use strict'

var gulp       = require('gulp')
  , purescript = require('gulp-purescript')
  ;

var paths = {
    src: 'src/**/*.purs',
    bowerSrc: [
      'bower_components/purescript-*/src/**/*.purs',
      'bower_components/purescript-*/src/**/*.purs.hs'
    ],
    dest: '',
    docsDest: 'README.md'
};

var options = {};

gulp.task('compile', function() {
    var pscMake = purescript.pscMake(options);
    pscMake.on('error', function(e) {
        console.error(e.message);
        pscMake.end();
    });
    return gulp.src([paths.src].concat(paths.bowerSrc))
        .pipe(pscMake)
        .pipe(gulp.dest(paths.dest));
});

gulp.task('docs', function() {
    return gulp.src(paths.src)
      .pipe(purescript.docgen())
      .pipe(gulp.dest(paths.docsDest));
});

gulp.task('watch', function() {
    gulp.watch(paths.src, ['compile', 'docs']);
});

gulp.task('default', ['compile', 'docs', 'watch']);
