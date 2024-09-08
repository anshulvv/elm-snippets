module Init exposing (init)

import Browser.Navigation exposing (Key)
import Flags
import Model exposing (Model)
import Msg
import Update
import Url exposing (Url)


init : Flags.Flags -> Url -> Key -> ( Model, Cmd Msg.Msg )
init flags url key =
    ( Model.initModel flags url key
    , Cmd.none
    )
