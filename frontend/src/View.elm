module View exposing (..)

import Html exposing (..)
import Types exposing (Model, Route(..), Msg)
import Page.Home as Home


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html msg
page model =
    case model.route of
        HomeRoute ->
            Home.view

        NotFoundRoute ->
            div [] [ text "lmao" ]
