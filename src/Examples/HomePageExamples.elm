module Examples.HomePageExamples exposing (Example, examples)

import Element exposing (..)
import Msg exposing (Msg)


type alias Example =
    { title : String
    , desc : Maybe String
    , code : Element Msg
    , textCode : String
    }


examples : List Example
examples =
    [ example1, example2 ]


example1 : Example
example1 =
    let
        exampleCode : Element Msg
        exampleCode =
            paragraph [] [ text <| "Example 1" ]
    in
    { title = "This is the title"
    , desc = Just "A normal label"
    , code = exampleCode
    , textCode = """
    paragraph []
        [ text <| "Example 1" ]
    """
    }


example2 : Example
example2 =
    let
        exampleCode : Element Msg
        exampleCode =
            paragraph [] [ text <| "Example 1" ]
    in
    { title = "This is the title"
    , desc = Just "A normal label"
    , code = exampleCode
    , textCode = """
    paragraph []
        [ text <| "Example 1" ]
    """
    }
