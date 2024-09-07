module Styles.Styles exposing (..)

import Element exposing (Attribute, Color)
import Styles.Colors
import Styles.Font



----------------------------------------
--####################################--
--||                                ||--
--||           ATTRIBUTES           ||--
--||                                ||--
--####################################--
----------------------------------------


titleAttr : List (Attribute msg)
titleAttr =
    Styles.Font.titleAttr


subtitleAttr : List (Attribute msg)
subtitleAttr =
    Styles.Font.subtitleAttr


subsubtitleAttr : List (Attribute msg)
subsubtitleAttr =
    Styles.Font.subsubtitleAttr


descAttr : List (Attribute msg)
descAttr =
    Styles.Font.descAttr
        { bold = False }


boldDescAttr : List (Attribute msg)
boldDescAttr =
    Styles.Font.descAttr
        { bold = True }


codeblockAttr : List (Attribute msg)
codeblockAttr =
    Styles.Font.codeblockAttr


codeOutputAttr : List (Attribute msg)
codeOutputAttr =
    Styles.Font.codeOutputAttr



------------------------------------
--################################--
--||                            ||--
--||           COLORS           ||--
--||                            ||--
--################################--
------------------------------------


backgoundColor : Color
backgoundColor =
    Styles.Colors.colors.background


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
    Styles.Colors.colors
