module View exposing (..)

import Html exposing (..)
import Model exposing (Model, Route(..), Msg(..))
import Page.Home as Home
import Page.SignUp as SignUp


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        HomeRoute ->
            Home.view

        SignUpRoute ->
            SignUp.view model.signUp
                |> Html.map SignUpMsg

        NotFoundRoute ->
            div [] [ text "lmao" ]
