module Page.SignUp exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


-- MODEL


type alias Model =
    { username : String
    , password : String
    , passwordAgain : String
    }


initModel : Model
initModel =
    Model "" "" ""



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Sign Up!" ]
        , input [ type_ "text", placeholder "Name", onInput Username ] []
        , input [ type_ "password", placeholder "Password", onInput Password ] []
        , input [ type_ "password", placeholder "Re-enter Password", onInput PasswordAgain ] []
        , viewValidation model
        , submitButton model
        ]


viewValidation : Model -> Html msg
viewValidation model =
    let
        ( color, message ) =
            if model.password == model.passwordAgain then
                ( "green", "OK" )
            else
                ( "red", "Passwords do not match!" )
    in
        div [ style [ ( "color", color ) ] ] [ text message ]


submitButton : Model -> Html msg
submitButton model =
    button []
           [ text "Sign up" ]



-- UPDATE


type Msg
    = Username String
    | Password String
    | PasswordAgain String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Username username ->
            { model | username = username }

        Password password ->
            { model | password = password }

        PasswordAgain password ->
            { model | passwordAgain = password }
