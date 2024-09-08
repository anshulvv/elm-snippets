module View exposing (view)

import Browser
import Element exposing (Element)
import Element.Background
import Element.Border
import Examples
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
        (pageViewHelper model.pageData)


pageViewHelper : Pages.PageData -> Element Msg
pageViewHelper pageData =
    Element.column
        [ Element.paddingEach
            { top = 100
            , bottom = 20
            , right = 30
            , left = 30
            }
        , Element.width Element.fill
        , Element.spacing 60
        ]
        [ titleView pageData.title
        , descView (pageData.desc |> Maybe.withDefault "")
        , examplesView pageData.examples
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


examplesView : Maybe (List Examples.Example) -> Element Msg
examplesView examples =
    case examples of
        Just examples_ ->
            let
                listOfExamplesView =
                    Element.column
                        [ Element.width Element.fill ]
                        (List.indexedMap
                            exampleView
                            examples_
                        )
            in
            Element.column
                [ Element.width Element.fill
                , Element.spacing 50
                , Element.paddingEach { top = 30, right = 0, left = 0, bottom = 200 }
                ]
                [ Element.el
                    Styles.subtitleAttr
                    (Element.text <| "Examples")
                , listOfExamplesView
                ]

        Nothing ->
            Element.none


exampleView : Int -> Examples.Example -> Element Msg
exampleView index example =
    let
        exampleTitleView : Element Msg
        exampleTitleView =
            Element.paragraph Styles.subsubtitleAttr
                [ Element.text ("#" ++ String.fromInt (index + 1) ++ " : " ++ example.title) ]

        exampleDescView : Element Msg
        exampleDescView =
            Element.paragraph Styles.descAttr
                [ Element.text <| Maybe.withDefault "" <| example.desc ]

        exampleCodeblockView : Element Msg
        exampleCodeblockView =
            Element.column [ Element.spacing 5, Element.width Element.fill ]
                [ Element.paragraph Styles.boldDescAttr [ Element.text <| "Code Block:" ]
                , Element.paragraph Styles.codeblockAttr
                    [ Element.text <| example.textCode ]
                ]

        exampleCodeOutputView : Element Msg
        exampleCodeOutputView =
            Element.column [ Element.spacing 5, Element.width Element.fill ]
                [ Element.paragraph Styles.boldDescAttr [ Element.text <| "Output:" ]
                , Element.paragraph Styles.codeOutputAttr [ example.code ]
                ]

        exampleView_ =
            Element.column
                [ Element.spacing 30
                , Element.width Element.fill
                ]
                [ exampleTitleView
                , exampleDescView
                , exampleCodeblockView
                , exampleCodeOutputView
                ]
    in
    Element.column [ Element.width Element.fill ] [ exampleView_, divider ]


divider : Element Msg
divider =
    Element.el
        [ Element.paddingXY 0 50
        , Element.width Element.fill
        ]
        (Element.el
            [ Element.Border.width 1
            , Element.Border.color (Element.rgba255 0 0 0 0.2)
            , Element.Border.rounded 20
            , Element.width Element.fill
            ]
            Element.none
        )
