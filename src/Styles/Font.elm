module Styles.Font exposing
    ( DescAttrConfig
    , codeOutputAttr
    , codeblockAttr
    , descAttr
    , fontAttrTemplate
    , subsubtitleAttr
    , subtitleAttr
    , titleAttr
    )

import Element exposing (Attribute)
import Element.Background
import Element.Border
import Element.Font as Font
import Styles.Colors


type alias FontData =
    { name : String
    , url : String
    }


titleFont : Maybe FontData
titleFont =
    Just
        { name = "Montserrat"
        , url = "https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,700;1,700&display=swap"
        }


noSpecialFont : Maybe FontData
noSpecialFont =
    Nothing


codeblockFont : Maybe FontData
codeblockFont =
    Just
        { name = "Fira Code "
        , url = "https://fonts.googleapis.com/css2?family=Fira+Code&display=swap"
        }


titleFontSize : Int
titleFontSize =
    40


subtitleFontSize : Int
subtitleFontSize =
    27


subsubtitleFontSize : Int
subsubtitleFontSize =
    20


descFontSize : Int
descFontSize =
    18


codeblockFontSize : Int
codeblockFontSize =
    descFontSize


titleAttr : List (Attribute msg)
titleAttr =
    fontAttrTemplate
        { fontSize = titleFontSize
        , underline = True
        , font = titleFont
        }


subtitleAttr : List (Attribute msg)
subtitleAttr =
    fontAttrTemplate
        { fontSize = subtitleFontSize
        , underline = True
        , font = noSpecialFont
        }


subsubtitleAttr : List (Attribute msg)
subsubtitleAttr =
    fontAttrTemplate
        { fontSize = subsubtitleFontSize
        , underline = False
        , font = titleFont
        }


codeblockAttr : List (Attribute msg)
codeblockAttr =
    fontAttrTemplate
        { fontSize = codeblockFontSize
        , underline = False
        , font = codeblockFont
        }
        ++ [ Element.width Element.fill
           , Element.paddingXY 30 20
           , Element.Border.rounded 10
           , Element.Background.color Styles.Colors.colors.codeblockBackground
           , Font.color
                Styles.Colors.colors.codeblockFontColor
           ]


codeOutputAttr : List (Attribute msg)
codeOutputAttr =
    [ Element.Background.color Styles.Colors.colors.white
    , Element.width Element.fill
    , Element.padding 20
    , Element.Border.rounded 10
    ]


fontAttrTemplate : { fontSize : Int, underline : Bool, font : Maybe FontData } -> List (Attribute msg)
fontAttrTemplate config =
    [ Font.size config.fontSize
    , if config.underline then
        Font.underline

      else
        Font.regular
    ]
        ++ (case config.font of
                Nothing ->
                    []

                Just fontData ->
                    [ Font.family [ Font.external fontData ] ]
           )


type alias DescAttrConfig =
    { bold : Bool }


descAttr : DescAttrConfig -> List (Attribute msg)
descAttr config =
    Font.size descFontSize
        :: (if config.bold == True then
                [ Font.bold ]

            else
                []
           )
