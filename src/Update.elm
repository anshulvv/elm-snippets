module Update exposing (..)

import Model exposing (Model)
import Msg exposing (Msg)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg.OnUrlChange url ->
            ( model, Cmd.none )

        Msg.OnUrlRequest request ->
            ( model, Cmd.none )

        Msg.OnLabelSnippetPage ->
            ( model, Cmd.none )
