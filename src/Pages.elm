module Pages exposing (..)

import Examples


type CurrentPage
    = Home
    | InvalidPage


type alias PageData =
    { title : String
    , desc : Maybe String
    , examples : Maybe (List Examples.Example)
    }


getCurrentPageFromString : String -> CurrentPage
getCurrentPageFromString currentPageString =
    case currentPageString of
        "home" ->
            Home

        _ ->
            InvalidPage


getCurrentPageData : CurrentPage -> PageData
getCurrentPageData currentPage =
    { title = getTitleOfCurrentPage currentPage
    , desc = getDescOfCurrentPage currentPage
    , examples = getExamplesListOfCurrentPage currentPage
    }


getTitleOfCurrentPage : CurrentPage -> String
getTitleOfCurrentPage currentPage =
    case currentPage of
        Home ->
            "Home"

        InvalidPage ->
            "Page Invalid"


getDescOfCurrentPage : CurrentPage -> Maybe String
getDescOfCurrentPage currentPage =
    case currentPage of
        Home ->
            Just "SOmething"

        InvalidPage ->
            Just "This page is trash, view the correct page"


getExamplesListOfCurrentPage : CurrentPage -> Maybe (List Examples.Example)
getExamplesListOfCurrentPage currentPage =
    case currentPage of
        Home ->
            Just Examples.homePageExamples

        InvalidPage ->
            Nothing
