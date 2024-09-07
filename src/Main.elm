module Main exposing (..)

import Browser
import Flags exposing (Flags)
import Init
import Model exposing (Model)
import Msg exposing (Msg)
import Subscriptions
import Update
import View


main : Program Flags Model Msg
main =
    Browser.application
        { init = Init.init
        , update = Update.update
        , view = View.view
        , subscriptions = Subscriptions.subscriptions
        , onUrlChange = Msg.OnUrlChange
        , onUrlRequest = Msg.OnUrlRequest
        }
