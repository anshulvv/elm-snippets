module Msg exposing (..)

import Browser
import Url exposing (Url)


type Msg
    = OnUrlChange Url
    | OnUrlRequest Browser.UrlRequest
    | OnLabelSnippetPage
