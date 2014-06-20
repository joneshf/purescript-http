# Module Documentation

## Module Network.HTTP

### Types

    data Header where
      Header :: HeaderHead -> String -> Header

    data HeaderHead where
      Accept :: HeaderHead
      AcceptCharset :: HeaderHead
      AcceptEncoding :: HeaderHead
      AcceptLanguage :: HeaderHead
      Allow :: HeaderHead
      Authorization :: HeaderHead
      CacheControl :: HeaderHead
      Connection :: HeaderHead
      ContentEncoding :: HeaderHead
      ContentLanguage :: HeaderHead
      ContentLength :: HeaderHead
      ContentLocation :: HeaderHead
      ContentMD5 :: HeaderHead
      ContentRange :: HeaderHead
      ContentType :: HeaderHead
      Date :: HeaderHead
      Expect :: HeaderHead
      Expires :: HeaderHead
      From :: HeaderHead
      Host :: HeaderHead
      IfMatch :: HeaderHead
      IfModifiedSince :: HeaderHead
      IfNoneMatch :: HeaderHead
      IfRange :: HeaderHead
      IfUnmodifiedSince :: HeaderHead
      LastModified :: HeaderHead
      MaxForwards :: HeaderHead
      Pragma :: HeaderHead
      ProxyAuthorization :: HeaderHead
      Range :: HeaderHead
      Referer :: HeaderHead
      TE :: HeaderHead
      Trailer :: HeaderHead
      TransferEncoding :: HeaderHead
      Upgrade :: HeaderHead
      UserAgent :: HeaderHead
      Via :: HeaderHead
      Warning :: HeaderHead
      Custom :: String -> HeaderHead

    data StatusCode where
      NoStatus :: StatusCode
      Accepted :: StatusCode
      BadGateway :: StatusCode
      BadRequest :: StatusCode
      Continue :: StatusCode
      Created :: StatusCode
      ExpectationFailed :: StatusCode
      Forbidden :: StatusCode
      Found :: StatusCode
      GatewayTimeout :: StatusCode
      Gone :: StatusCode
      HTTPVersionNotSupported :: StatusCode
      InternalServerError :: StatusCode
      LengthRequired :: StatusCode
      MethodNotAllowed :: StatusCode
      MovedPermanently :: StatusCode
      MultipleChoices :: StatusCode
      NoContent :: StatusCode
      NonAuthoritativeInformation :: StatusCode
      NotAcceptable :: StatusCode
      NotFound :: StatusCode
      NotImplemented :: StatusCode
      NotModified :: StatusCode
      Ok :: StatusCode
      PartialContent :: StatusCode
      PaymentRequired :: StatusCode
      PreconditionFailed :: StatusCode
      ProxyAuthenticationRequired :: StatusCode
      RequestedRangeNotSatisfiable :: StatusCode
      RequestEntityTooLarge :: StatusCode
      RequestTimeout :: StatusCode
      RequestURITooLong :: StatusCode
      ResetContent :: StatusCode
      SeeOther :: StatusCode
      ServiceUnavailable :: StatusCode
      SwitchingProtocols :: StatusCode
      TemporaryRedirect :: StatusCode
      Unauthorized :: StatusCode
      UnsupportedMediaType :: StatusCode
      UseProxy :: StatusCode

    data Verb where
      DELETE :: Verb
      GET :: Verb
      HEAD :: Verb
      OPTIONS :: Verb
      PATCH :: Verb
      POST :: Verb
      PUT :: Verb


### Type Class Instances

    instance showHTTPVerb :: Show Verb

    instance showHeader :: Show Header

    instance showHeaderHead :: Show HeaderHead


### Values

    eol :: forall m. (Monad m) => ParserT String m String

    number2Status :: Number -> Maybe StatusCode

    parseHeader :: forall m. (Monad m) => ParserT String m Header

    skipMany :: forall m s a. (Monad m) => ParserT s m a -> ParserT s m {  }

    skipSpaces :: forall m. (Monad m) => ParserT String m {  }

    space :: forall m. (Monad m) => ParserT String m String

    status2Number :: StatusCode -> Number

    string2Head :: String -> HeaderHead



