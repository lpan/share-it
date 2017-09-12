module Models exposing (..)

type Route
    = HomeRoute
    | NotFoundRoute

type alias Model =
    { route : Route
    }

initModel : Route -> Model
initModel route =
    { route = route
    }
