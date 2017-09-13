module Model exposing (..)

import Navigation exposing (Location)
import Page.SignUp as SignUp


type Msg
    = OnLocationChange Location
    | SignUpMsg SignUp.Msg

type Route
    = HomeRoute
    | SignUpRoute
    | NotFoundRoute

type alias Model =
    { route : Route
    , signUp : SignUp.Model
    }


initModel : Route -> Model
initModel route =
    { route = route
    , signUp = SignUp.initModel
    }

