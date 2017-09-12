module Types exposing (..)

import Navigation exposing (Location)


type Msg
    = OnLocationChange Location

type Route
    = HomeRoute
    | NotFoundRoute

type alias Model =
    { route : Route
    }
