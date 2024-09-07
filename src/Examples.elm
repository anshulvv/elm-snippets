module Examples exposing (..)

import Element exposing (Element)
import Examples.HomePageExamples
import Msg exposing (Msg)


type alias Example =
    { title : String
    , desc : Maybe String
    , code : Element Msg
    , textCode : String
    }


homePageExamples : List Example
homePageExamples =
    Examples.HomePageExamples.examples
