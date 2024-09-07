module View exposing (view)

import Browser
import Element exposing (..)
import Element.Border
import Model exposing (Model)
import Msg exposing (Msg)
import Pages


view : Model -> Browser.Document Msg
view model =
    { title = "Elm Snippets"
    , body =
        [ Element.layout
            []
            (viewHelper model)
        ]
    }


viewHelper : Model -> Element Msg
viewHelper model =
    el
        [ width (fill |> maximum 400)
        , Element.centerX
        , Element.Border.color (Element.rgb 255 0 0)
        ]
        (pageViewHelper
            model.currentPage
        )


pageViewHelper : Pages.CurrentPage -> Element Msg
pageViewHelper currentPage =
    let
        pageData : Pages.PageData
        pageData =
            Pages.getCurrentPageData currentPage
    in
    viewPageData_DELETEMELATER pageData


viewPageData_DELETEMELATER : Pages.PageData -> Element Msg
viewPageData_DELETEMELATER pageData =
    column []
        [ text <| pageData.title
        , text <| Maybe.withDefault "NOTHING" <| pageData.desc
        ]
