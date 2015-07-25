module Network.HTTP where

import Prelude

import Data.Maybe

data Verb = DELETE
          | GET
          | HEAD
          | OPTIONS
          | PATCH
          | POST
          | PUT

data StatusCode = NoStatus
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

data Header = Header HeaderHead String

-- This type is not expressive enough.
data HeaderHead = Accept
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

instance showHTTPVerb :: Show Verb where
  show DELETE  = "DELETE"
  show GET     = "GET"
  show HEAD    = "HEAD"
  show OPTIONS = "OPTIONS"
  show PATCH   = "PATCH"
  show POST    = "POST"
  show PUT     = "PUT"

instance showHeader :: Show Header where
  show (Header head value) = show head ++ ": " ++ value

instance showStatusCode :: Show StatusCode where
  show NoStatus                     = "NoStatus"
  show Accepted                     = "Accepted"
  show BadGateway                   = "BadGateway"
  show BadRequest                   = "BadRequest"
  show Continue                     = "Continue"
  show Created                      = "Created"
  show ExpectationFailed            = "ExpectationFailed"
  show Forbidden                    = "Forbidden"
  show Found                        = "Found"
  show GatewayTimeout               = "GatewayTimeout"
  show Gone                         = "Gone"
  show HTTPVersionNotSupported      = "HTTPVersionNotSupported"
  show InternalServerError          = "InternalServerError"
  show LengthRequired               = "LengthRequired"
  show MethodNotAllowed             = "MethodNotAllowed"
  show MovedPermanently             = "MovedPermanently"
  show MultipleChoices              = "MultipleChoices"
  show NoContent                    = "NoContent"
  show NonAuthoritativeInformation  = "NonAuthoritativeInformation"
  show NotAcceptable                = "NotAcceptable"
  show NotFound                     = "NotFound"
  show NotImplemented               = "NotImplemented"
  show NotModified                  = "NotModified"
  show Ok                           = "Ok"
  show PartialContent               = "PartialContent"
  show PaymentRequired              = "PaymentRequired"
  show PreconditionFailed           = "PreconditionFailed"
  show ProxyAuthenticationRequired  = "ProxyAuthenticationRequired"
  show RequestedRangeNotSatisfiable = "RequestedRangeNotSatisfiable"
  show RequestEntityTooLarge        = "RequestEntityTooLarge"
  show RequestTimeout               = "RequestTimeout"
  show RequestURITooLong            = "RequestURITooLong"
  show ResetContent                 = "ResetContent"
  show SeeOther                     = "SeeOther"
  show ServiceUnavailable           = "ServiceUnavailable"
  show SwitchingProtocols           = "SwitchingProtocols"
  show TemporaryRedirect            = "TemporaryRedirect"
  show Unauthorized                 = "Unauthorized"
  show UnsupportedMediaType         = "UnsupportedMediaType"
  show UseProxy                     = "UseProxy"

instance showHeaderHead :: Show HeaderHead where
  show Accept             = "Accept"
  show AcceptCharset      = "Accept-Charset"
  show AcceptEncoding     = "Accept-Encoding"
  show AcceptLanguage     = "Accept-Language"
  show Allow              = "Allow"
  show Authorization      = "Authorization"
  show CacheControl       = "Cache-Control"
  show Connection         = "Connection"
  show ContentEncoding    = "Content-Encoding"
  show ContentLanguage    = "Content-Language"
  show ContentLength      = "Content-Length"
  show ContentLocation    = "Content-Location"
  show ContentMD5         = "Content-MD5"
  show ContentRange       = "Content-Range"
  show ContentType        = "Content-Type"
  show Date               = "Date"
  show Expect             = "Expect"
  show Expires            = "Expires"
  show From               = "From"
  show Host               = "Host"
  show IfMatch            = "If-Match"
  show IfModifiedSince    = "If-Modified-Since"
  show IfNoneMatch        = "If-None-Match"
  show IfRange            = "If-Range"
  show IfUnmodifiedSince  = "If-Unmodified-Since"
  show LastModified       = "Last-Modified"
  show MaxForwards        = "Max-Forwards"
  show Pragma             = "Pragma"
  show ProxyAuthorization = "Proxy-Authorization"
  show Range              = "Range"
  show Referer            = "Referer"
  show TE                 = "Te"
  show Trailer            = "Trailer"
  show TransferEncoding   = "Transfer-Encoding"
  show Upgrade            = "Upgrade"
  show UserAgent          = "User-Agent"
  show Via                = "Via"
  show Warning            = "Warning"
  show (Custom header)    = header

string2Verb :: String -> Maybe Verb
string2Verb "DELETE"  = Just DELETE
string2Verb "GET"     = Just GET
string2Verb "HEAD"    = Just HEAD
string2Verb "OPTIONS" = Just OPTIONS
string2Verb "PATCH"   = Just PATCH
string2Verb "POST"    = Just POST
string2Verb "PUT"     = Just PUT
string2Verb _         = Nothing

string2Head :: String -> HeaderHead
string2Head "Accept"              = Accept
string2Head "Accept-Charset"      = AcceptCharset
string2Head "Accept-Encoding"     = AcceptEncoding
string2Head "Accept-Language"     = AcceptLanguage
string2Head "Allow"               = Allow
string2Head "Authorization"       = Authorization
string2Head "Cache-Control"       = CacheControl
string2Head "Connection"          = Connection
string2Head "Content-Encoding"    = ContentEncoding
string2Head "Content-Language"    = ContentLanguage
string2Head "Content-Length"      = ContentLength
string2Head "Content-Location"    = ContentLocation
string2Head "Content-MD5"         = ContentMD5
string2Head "Content-Range"       = ContentRange
string2Head "Content-Type"        = ContentType
string2Head "Date"                = Date
string2Head "Expect"              = Expect
string2Head "Expires"             = Expires
string2Head "From"                = From
string2Head "Host"                = Host
string2Head "If-Match"            = IfMatch
string2Head "If-Modified-Since"   = IfModifiedSince
string2Head "If-None-Match"       = IfNoneMatch
string2Head "If-Range"            = IfRange
string2Head "If-Unmodified-Since" = IfUnmodifiedSince
string2Head "Last-Modified"       = LastModified
string2Head "Max-Forwards"        = MaxForwards
string2Head "Pragma"              = Pragma
string2Head "Proxy-Authorization" = ProxyAuthorization
string2Head "Range"               = Range
string2Head "Referer"             = Referer
string2Head "Te"                  = TE
string2Head "Trailer"             = Trailer
string2Head "Transfer-Encoding"   = TransferEncoding
string2Head "Upgrade"             = Upgrade
string2Head "User-Agent"          = UserAgent
string2Head "Via"                 = Via
string2Head "Warning"             = Warning
string2Head header                = (Custom header)

status2Number :: StatusCode -> Int
-- 0 Default status for unsent requests
status2Number NoStatus                     = 0
-- 100 Informational
status2Number Continue                     = 100
status2Number SwitchingProtocols           = 101
-- 200 Successful
status2Number Ok                           = 200
status2Number Created                      = 201
status2Number Accepted                     = 202
status2Number NonAuthoritativeInformation  = 203
status2Number NoContent                    = 204
status2Number ResetContent                 = 205
status2Number PartialContent               = 206
-- 300 Redirection
status2Number MultipleChoices              = 300
status2Number MovedPermanently             = 301
status2Number Found                        = 302
status2Number SeeOther                     = 303
status2Number NotModified                  = 304
status2Number UseProxy                     = 305
status2Number TemporaryRedirect            = 307
-- 400 Client Error
status2Number BadRequest                   = 400
status2Number Unauthorized                 = 401
status2Number PaymentRequired              = 402
status2Number Forbidden                    = 403
status2Number NotFound                     = 404
status2Number MethodNotAllowed             = 405
status2Number NotAcceptable                = 406
status2Number ProxyAuthenticationRequired  = 407
status2Number RequestTimeout               = 408
status2Number Gone                         = 410
status2Number LengthRequired               = 411
status2Number PreconditionFailed           = 412
status2Number RequestEntityTooLarge        = 413
status2Number RequestURITooLong            = 414
status2Number UnsupportedMediaType         = 415
status2Number RequestedRangeNotSatisfiable = 416
status2Number ExpectationFailed            = 417
-- 500 Server Error
status2Number InternalServerError          = 500
status2Number NotImplemented               = 501
status2Number BadGateway                   = 502
status2Number ServiceUnavailable           = 503
status2Number GatewayTimeout               = 504
status2Number HTTPVersionNotSupported      = 505

number2Status :: Int -> Maybe StatusCode
-- 0 Default status for unsent requests
number2Status 0   = Just NoStatus
-- 100 Informational
number2Status 100 = Just Continue
number2Status 101 = Just SwitchingProtocols
-- 200 Successful
number2Status 200 = Just Ok
number2Status 201 = Just Created
number2Status 202 = Just Accepted
number2Status 203 = Just NonAuthoritativeInformation
number2Status 204 = Just NoContent
number2Status 205 = Just ResetContent
number2Status 206 = Just PartialContent
-- 300 Redirection
number2Status 300 = Just MultipleChoices
number2Status 301 = Just MovedPermanently
number2Status 302 = Just Found
number2Status 303 = Just SeeOther
number2Status 304 = Just NotModified
number2Status 305 = Just UseProxy
number2Status 307 = Just TemporaryRedirect
-- 400 Client Error
number2Status 400 = Just BadRequest
number2Status 401 = Just Unauthorized
number2Status 402 = Just PaymentRequired
number2Status 403 = Just Forbidden
number2Status 404 = Just NotFound
number2Status 405 = Just MethodNotAllowed
number2Status 406 = Just NotAcceptable
number2Status 407 = Just ProxyAuthenticationRequired
number2Status 408 = Just RequestTimeout
number2Status 410 = Just Gone
number2Status 411 = Just LengthRequired
number2Status 412 = Just PreconditionFailed
number2Status 413 = Just RequestEntityTooLarge
number2Status 414 = Just RequestURITooLong
number2Status 415 = Just UnsupportedMediaType
number2Status 416 = Just RequestedRangeNotSatisfiable
number2Status 417 = Just ExpectationFailed
-- 500 Server Error
number2Status 500 = Just InternalServerError
number2Status 501 = Just NotImplemented
number2Status 502 = Just BadGateway
number2Status 503 = Just ServiceUnavailable
number2Status 504 = Just GatewayTimeout
number2Status 505 = Just HTTPVersionNotSupported
number2Status _   = Nothing

-- Header helpers
accept :: String -> Header
accept = Header Accept

acceptCharset :: String -> Header
acceptCharset = Header AcceptCharset

acceptEncoding :: String -> Header
acceptEncoding = Header AcceptEncoding

acceptLanguage :: String -> Header
acceptLanguage = Header AcceptLanguage

allow :: String -> Header
allow = Header Allow

authorization :: String -> Header
authorization = Header Authorization

cacheControl :: String -> Header
cacheControl = Header CacheControl

connection :: String -> Header
connection = Header Connection

contentEncoding :: String -> Header
contentEncoding = Header ContentEncoding

contentLanguage :: String -> Header
contentLanguage = Header ContentLanguage

contentLength :: String -> Header
contentLength = Header ContentLength

contentLocation :: String -> Header
contentLocation = Header ContentLocation

contentMD5 :: String -> Header
contentMD5 = Header ContentMD5

contentRange :: String -> Header
contentRange = Header ContentRange

contentType :: String -> Header
contentType = Header ContentType

date :: String -> Header
date = Header Date

expect :: String -> Header
expect = Header Expect

expires :: String -> Header
expires = Header Expires

from :: String -> Header
from = Header From

host :: String -> Header
host = Header Host

ifMatch :: String -> Header
ifMatch = Header IfMatch

ifModifiedSince :: String -> Header
ifModifiedSince = Header IfModifiedSince

ifNoneMatch :: String -> Header
ifNoneMatch = Header IfNoneMatch

ifRange :: String -> Header
ifRange = Header IfRange

ifUnmodifiedSince :: String -> Header
ifUnmodifiedSince = Header IfUnmodifiedSince

lastModified :: String -> Header
lastModified = Header LastModified

maxForwards :: String -> Header
maxForwards = Header MaxForwards

pragma :: String -> Header
pragma = Header Pragma

proxyAuthorization :: String -> Header
proxyAuthorization = Header ProxyAuthorization

range :: String -> Header
range = Header Range

referer :: String -> Header
referer = Header Referer

tE :: String -> Header
tE = Header TE

trailer :: String -> Header
trailer = Header Trailer

transferEncoding :: String -> Header
transferEncoding = Header TransferEncoding

upgrade :: String -> Header
upgrade = Header Upgrade

userAgent :: String -> Header
userAgent = Header UserAgent

via :: String -> Header
via = Header Via

warning :: String -> Header
warning = Header Warning

customString :: String -> String -> Header
customString s = Header (Custom s)

-- Status code aliases
status0 :: StatusCode
status0   = NoStatus

status100 :: StatusCode
status100 = Continue

status101 :: StatusCode
status101 = SwitchingProtocols

status200 :: StatusCode
status200 = Ok

status201 :: StatusCode
status201 = Created

status202 :: StatusCode
status202 = Accepted

status203 :: StatusCode
status203 = NonAuthoritativeInformation

status204 :: StatusCode
status204 = NoContent

status205 :: StatusCode
status205 = ResetContent

status206 :: StatusCode
status206 = PartialContent

status300 :: StatusCode
status300 = MultipleChoices

status301 :: StatusCode
status301 = MovedPermanently

status302 :: StatusCode
status302 = Found

status303 :: StatusCode
status303 = SeeOther

status304 :: StatusCode
status304 = NotModified

status305 :: StatusCode
status305 = UseProxy

status307 :: StatusCode
status307 = TemporaryRedirect

status400 :: StatusCode
status400 = BadRequest

status401 :: StatusCode
status401 = Unauthorized

status402 :: StatusCode
status402 = PaymentRequired

status403 :: StatusCode
status403 = Forbidden

status404 :: StatusCode
status404 = NotFound

status405 :: StatusCode
status405 = MethodNotAllowed

status406 :: StatusCode
status406 = NotAcceptable

status407 :: StatusCode
status407 = ProxyAuthenticationRequired

status408 :: StatusCode
status408 = RequestTimeout

status410 :: StatusCode
status410 = Gone

status411 :: StatusCode
status411 = LengthRequired

status412 :: StatusCode
status412 = PreconditionFailed

status413 :: StatusCode
status413 = RequestEntityTooLarge

status414 :: StatusCode
status414 = RequestURITooLong

status415 :: StatusCode
status415 = UnsupportedMediaType

status416 :: StatusCode
status416 = RequestedRangeNotSatisfiable

status417 :: StatusCode
status417 = ExpectationFailed

status500 :: StatusCode
status500 = InternalServerError

status501 :: StatusCode
status501 = NotImplemented

status502 :: StatusCode
status502 = BadGateway

status503 :: StatusCode
status503 = ServiceUnavailable

status504 :: StatusCode
status504 = GatewayTimeout

status505 :: StatusCode
status505 = HTTPVersionNotSupported
