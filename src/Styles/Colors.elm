module Styles.Colors exposing (colors)

import Element exposing (Color)


colors :
    { title : Color
    , text : Color
    , background : Color
    , red : Color
    , blue : Color
    , white : Color
    , codeblockBackground : Color
    , codeblockFontColor : Color
    }
colors =
    { title = Element.rgb255 0 0 0
    , text = Element.rgb255 0 0 0
    , background = Element.rgb255 250 243 217
    , red = Element.rgb255 255 0 0
    , blue = Element.rgb255 0 0 255
    , white = Element.rgb255 255 255 255
    , codeblockBackground = Element.rgb255 59 59 59
    , codeblockFontColor = Element.rgb255 213 213 213
    }
