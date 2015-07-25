# Module Documentation

## Module Network.HTTP

#### `Verb`

``` purescript
data Verb
  = DELETE 
  | GET 
  | HEAD 
  | OPTIONS 
  | PATCH 
  | POST 
  | PUT 
```


#### `StatusCode`

``` purescript
data StatusCode
  = NoStatus 
  | Accepted 
  | BadGateway 
  | BadRequest 
  | Continue 
  | Created 
  | ExpectationFailed 
  | Forbidden 
  | Found 
  | GatewayTimeout 
  | Gone 
  | HTTPVersionNotSupported 
  | InternalServerError 
  | LengthRequired 
  | MethodNotAllowed 
  | MovedPermanently 
  | MultipleChoices 
  | NoContent 
  | NonAuthoritativeInformation 
  | NotAcceptable 
  | NotFound 
  | NotImplemented 
  | NotModified 
  | Ok 
  | PartialContent 
  | PaymentRequired 
  | PreconditionFailed 
  | ProxyAuthenticationRequired 
  | RequestedRangeNotSatisfiable 
  | RequestEntityTooLarge 
  | RequestTimeout 
  | RequestURITooLong 
  | ResetContent 
  | SeeOther 
  | ServiceUnavailable 
  | SwitchingProtocols 
  | TemporaryRedirect 
  | Unauthorized 
  | UnsupportedMediaType 
  | UseProxy 
```


#### `Header`

``` purescript
data Header
  = Header HeaderHead String
```


#### `HeaderHead`

``` purescript
data HeaderHead
  = Accept 
  | AcceptCharset 
  | AcceptEncoding 
  | AcceptLanguage 
  | Allow 
  | Authorization 
  | CacheControl 
  | Connection 
  | ContentEncoding 
  | ContentLanguage 
  | ContentLength 
  | ContentLocation 
  | ContentMD5 
  | ContentRange 
  | ContentType 
  | Date 
  | Expect 
  | Expires 
  | From 
  | Host 
  | IfMatch 
  | IfModifiedSince 
  | IfNoneMatch 
  | IfRange 
  | IfUnmodifiedSince 
  | LastModified 
  | MaxForwards 
  | Pragma 
  | ProxyAuthorization 
  | Range 
  | Referer 
  | TE 
  | Trailer 
  | TransferEncoding 
  | Upgrade 
  | UserAgent 
  | Via 
  | Warning 
  | Custom String
```

#### `showHTTPVerb`

``` purescript
instance showHTTPVerb :: Show Verb
```


#### `showHeader`

``` purescript
instance showHeader :: Show Header
```


#### `showStatusCode`

``` purescript
instance showStatusCode :: Show StatusCode
```


#### `showHeaderHead`

``` purescript
instance showHeaderHead :: Show HeaderHead
```


#### `string2Verb`

``` purescript
string2Verb :: String -> Maybe Verb
```


#### `string2Head`

``` purescript
string2Head :: String -> HeaderHead
```


#### `status2Number`

``` purescript
status2Number :: StatusCode -> Int
```


#### `number2Status`

``` purescript
number2Status :: Int -> Maybe StatusCode
```


#### `accept`

``` purescript
accept :: String -> Header
```

#### `acceptCharset`

``` purescript
acceptCharset :: String -> Header
```


#### `acceptEncoding`

``` purescript
acceptEncoding :: String -> Header
```


#### `acceptLanguage`

``` purescript
acceptLanguage :: String -> Header
```


#### `allow`

``` purescript
allow :: String -> Header
```


#### `authorization`

``` purescript
authorization :: String -> Header
```


#### `cacheControl`

``` purescript
cacheControl :: String -> Header
```


#### `connection`

``` purescript
connection :: String -> Header
```


#### `contentEncoding`

``` purescript
contentEncoding :: String -> Header
```


#### `contentLanguage`

``` purescript
contentLanguage :: String -> Header
```


#### `contentLength`

``` purescript
contentLength :: String -> Header
```


#### `contentLocation`

``` purescript
contentLocation :: String -> Header
```


#### `contentMD5`

``` purescript
contentMD5 :: String -> Header
```


#### `contentRange`

``` purescript
contentRange :: String -> Header
```


#### `contentType`

``` purescript
contentType :: String -> Header
```


#### `date`

``` purescript
date :: String -> Header
```


#### `expect`

``` purescript
expect :: String -> Header
```


#### `expires`

``` purescript
expires :: String -> Header
```


#### `from`

``` purescript
from :: String -> Header
```


#### `host`

``` purescript
host :: String -> Header
```


#### `ifMatch`

``` purescript
ifMatch :: String -> Header
```


#### `ifModifiedSince`

``` purescript
ifModifiedSince :: String -> Header
```


#### `ifNoneMatch`

``` purescript
ifNoneMatch :: String -> Header
```


#### `ifRange`

``` purescript
ifRange :: String -> Header
```


#### `ifUnmodifiedSince`

``` purescript
ifUnmodifiedSince :: String -> Header
```


#### `lastModified`

``` purescript
lastModified :: String -> Header
```


#### `maxForwards`

``` purescript
maxForwards :: String -> Header
```


#### `pragma`

``` purescript
pragma :: String -> Header
```


#### `proxyAuthorization`

``` purescript
proxyAuthorization :: String -> Header
```


#### `range`

``` purescript
range :: String -> Header
```


#### `referer`

``` purescript
referer :: String -> Header
```


#### `tE`

``` purescript
tE :: String -> Header
```


#### `trailer`

``` purescript
trailer :: String -> Header
```


#### `transferEncoding`

``` purescript
transferEncoding :: String -> Header
```


#### `upgrade`

``` purescript
upgrade :: String -> Header
```


#### `userAgent`

``` purescript
userAgent :: String -> Header
```


#### `via`

``` purescript
via :: String -> Header
```


#### `warning`

``` purescript
warning :: String -> Header
```


#### `customString`

``` purescript
customString :: String -> String -> Header
```


#### `status0`

``` purescript
status0 :: StatusCode
```

#### `status100`

``` purescript
status100 :: StatusCode
```


#### `status101`

``` purescript
status101 :: StatusCode
```


#### `status200`

``` purescript
status200 :: StatusCode
```


#### `status201`

``` purescript
status201 :: StatusCode
```


#### `status202`

``` purescript
status202 :: StatusCode
```


#### `status203`

``` purescript
status203 :: StatusCode
```


#### `status204`

``` purescript
status204 :: StatusCode
```


#### `status205`

``` purescript
status205 :: StatusCode
```


#### `status206`

``` purescript
status206 :: StatusCode
```


#### `status300`

``` purescript
status300 :: StatusCode
```


#### `status301`

``` purescript
status301 :: StatusCode
```


#### `status302`

``` purescript
status302 :: StatusCode
```


#### `status303`

``` purescript
status303 :: StatusCode
```


#### `status304`

``` purescript
status304 :: StatusCode
```


#### `status305`

``` purescript
status305 :: StatusCode
```


#### `status307`

``` purescript
status307 :: StatusCode
```


#### `status400`

``` purescript
status400 :: StatusCode
```


#### `status401`

``` purescript
status401 :: StatusCode
```


#### `status402`

``` purescript
status402 :: StatusCode
```


#### `status403`

``` purescript
status403 :: StatusCode
```


#### `status404`

``` purescript
status404 :: StatusCode
```


#### `status405`

``` purescript
status405 :: StatusCode
```


#### `status406`

``` purescript
status406 :: StatusCode
```


#### `status407`

``` purescript
status407 :: StatusCode
```


#### `status408`

``` purescript
status408 :: StatusCode
```


#### `status410`

``` purescript
status410 :: StatusCode
```


#### `status411`

``` purescript
status411 :: StatusCode
```


#### `status412`

``` purescript
status412 :: StatusCode
```


#### `status413`

``` purescript
status413 :: StatusCode
```


#### `status414`

``` purescript
status414 :: StatusCode
```


#### `status415`

``` purescript
status415 :: StatusCode
```


#### `status416`

``` purescript
status416 :: StatusCode
```


#### `status417`

``` purescript
status417 :: StatusCode
```


#### `status500`

``` purescript
status500 :: StatusCode
```


#### `status501`

``` purescript
status501 :: StatusCode
```


#### `status502`

``` purescript
status502 :: StatusCode
```


#### `status503`

``` purescript
status503 :: StatusCode
```


#### `status504`

``` purescript
status504 :: StatusCode
```


#### `status505`

``` purescript
status505 :: StatusCode
```




