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


descAttr : List (Attribute msg)
descAttr =
    Styles.Font.descAttr



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
