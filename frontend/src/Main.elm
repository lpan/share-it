module Main exposing (..)

import Navigation exposing (Location)
import Routing exposing (parseLocation)
import View exposing (view)
import Model exposing (Model, initModel, Route, Msg(..))
import Page.SignUp as SignUp


-- INIT


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
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        SignUpMsg subMsg ->
            let
                newSignUp =
                    SignUp.update subMsg model.signUp
            in
                ( { model | signUp = newSignUp }, Cmd.none )



-- MAIN


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
