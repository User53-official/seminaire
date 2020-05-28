module App exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- Déterminer comment l'application va compiler
main =
    Browser.sandbox 
        { view = view
        , init = init
        , update = update
        }


-- Déclarer des types en Elm
type alias Model = 
    { login : String
    , password : String
    , elements : List String
    }


type Msg
    = ChangeLogin String
    | ChangePassword String
    | Submit


-- Reproduire le state
init : Model
init =
    { login = ""
    , password = ""
    , elements = [ "Reda Hamza", "Philipe Roberge", "Anni Li" ]
    }


-- Reproduire la fonction render()
view : Model -> Html Msg
view model =
    div [ id "form" ]
        [ input [ type_ "text", value model.login, onInput ChangeLogin ] []
        , input [ type_ "password", value model.password, onInput ChangePassword ] []
        , button [ onClick Submit, disabled (isInvalidFormat model) ] [ text "Submit" ]
        , div [] (afficheNom model.elements)
        , p [] [ text model.login ]
        , p [] [ text model.password ]
        ]


afficheNom : List String -> List (Html Msg)
afficheNom list =
    List.map
        (\elem ->
            p [] [ text elem ]
        )
        list

-- Créer une fonction en Elm
-- (À faire)
isInvalidFormat : Model -> Bool
isInvalidFormat model =
    String.length model.login < 8
        || String.length model.password < 8


-- Reproduire fonction setState()
update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeLogin login ->
            { model | login = login }

        ChangePassword password ->
            { model | password = password }

        Submit ->
            model