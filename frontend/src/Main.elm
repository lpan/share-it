module Main exposing (..)

import Html exposing (..)
import Navigation exposing (Location)
import Routing exposing (parseLocation)
import View exposing (view)
import Models exposing (Model, Route)
import Msgs exposing (Msg)


initModel : Route -> Model
initModel route =
    { route = route
    }

init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location

    in
        ( initModel currentRoute, Cmd.none )


-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.OnLocationChange location ->
            let
                newRoute =
                    parseLocation location

            in
                ( { model | route = newRoute }, Cmd.none )



-- MAIN


main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
