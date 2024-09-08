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
    , pageData : Pages.PageData
    }


initModel : Flags.Flags -> Url -> Key -> Model
initModel flags url key =
    let
        currentPage : Pages.CurrentPage
        currentPage =
            Pages.getCurrentPageFromString flags.currentPage

        pageData =
            Pages.getCurrentPageData currentPage
    in
    { flags = Flags.initFlags flags
    , url = url
    , key = key
    , currentPage = currentPage
    , pageData = pageData
    }
