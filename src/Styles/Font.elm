module Styles.Font exposing (descAttr, titleAttr)

import Element exposing (Attribute)
import Element.Font as Font
import Styles.Colors


titleFontSize : Int
titleFontSize =
    40


descFontSize : Int
descFontSize =
    18


titleAttr : List (Attribute msg)
titleAttr =
    [ Font.size titleFontSize
    , Font.family
        [ Font.external
            { name = "Montserrat"
            , url = "https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,700;1,700&display=swap"
            }
        ]
    , Font.color Styles.Colors.colors.title
    ]


descAttr : List (Attribute msg)
descAttr =
    [ Font.size descFontSize ]
