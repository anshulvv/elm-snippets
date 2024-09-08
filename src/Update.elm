module Update exposing (..)

import Model exposing (Model)
import Msg exposing (Msg)
import Pages


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg.OnUrlChange _ ->
            ( model, Cmd.none )

        Msg.OnUrlRequest _ ->
            ( model, Cmd.none )

        Msg.OnLabelSnippetPage ->
            ( model, Cmd.none )
