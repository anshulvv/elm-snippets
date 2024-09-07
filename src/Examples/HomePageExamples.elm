module Examples.HomePageExamples exposing (..)

import Element exposing (..)
import Msg exposing (Msg)


type alias Example =
    { title : String
    , desc : Maybe String
    , code : Element Msg
    , textCode : String
    }


example1 : Example
example1 =
    let
        exampleCode : Element Msg
        exampleCode =
            paragraph [] [ text <| "Example 1" ]
    in
    { title = "This is the title"
    , desc = Nothing
    , code = exampleCode
    , textCode = ""
    }
