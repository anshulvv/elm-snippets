module View exposing (view)

import Browser
import Element exposing (Element)
import Element.Background
import Element.Border
import Element.Font as Font
import Model exposing (Model)
import Msg exposing (Msg)
import Pages
import Styles.Styles as Styles


view : Model -> Browser.Document Msg
view model =
    { title = "Elm Snippets"
    , body =
        [ Element.layout
            [ Element.Background.color Styles.backgoundColor ]
            (viewHelper model)
        ]
    }


viewHelper : Model -> Element Msg
viewHelper model =
    Element.el
        [ Element.width (Element.fill |> Element.maximum 800 |> Element.minimum 600)
        , Element.centerX
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
    Element.column
        [ Element.paddingEach
            { top = 100
            , bottom = 20
            , right = 30
            , left = 30
            }
        , Element.width Element.fill
        , Element.spacing 50
        ]
        [ titleView pageData.title
        , descView (pageData.desc |> Maybe.withDefault "")

        -- , examplesView (pageData.examples)
        ]


titleView : String -> Element Msg
titleView title =
    Element.el
        (Styles.titleAttr
            ++ [ Element.centerX
               ]
        )
        (Element.text <| title)


descView : String -> Element Msg
descView desc =
    Element.paragraph
        Styles.descAttr
        [ Element.text <| desc ]
