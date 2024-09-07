module Model exposing (Model, initModel)

import Browser.Navigation exposing (Key)
import Flags
import Pages
import Url exposing (Url)


type alias Model =
    { flags : Flags.Flags
    , url : Url
    , key : Key
    , currentPage : Pages.CurrentPage
    }


initModel : Flags.Flags -> Url -> Key -> Model
initModel flags url key =
    let
        currentPage : Pages.CurrentPage
        currentPage =
            Pages.getCurrentPageFromString flags.currentPage
    in
    { flags = Flags.initFlags flags
    , url = url
    , key = key
    , currentPage = currentPage
    }
