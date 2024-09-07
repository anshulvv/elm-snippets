module Styles.Colors exposing (colors)

import Element exposing (Color)


colors : { title : Color, text : Color, background : Color, red : Color }
colors =
    { title = Element.rgb255 0 0 0
    , text = Element.rgb255 0 0 0
    , background = Element.rgb255 250 243 217
    , red = Element.rgb255 255 0 0
    }
