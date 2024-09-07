module Flags exposing (Flags, initFlags)


type alias Flags =
    { currentPage : String }


initFlags : Flags -> Flags
initFlags flags =
    { currentPage = flags.currentPage }
