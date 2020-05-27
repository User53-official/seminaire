# Ateler 01 - Commencer un projet!
## Premières étapes

* Créer un dossier ou vous pourrez initialiser votre projet
* Assurer vous d'avoir un terminal ou un cmd d'ouvert à au dossier que vous avez créé
* Entrer la commande suivante dans le terminal: `elm init`

## Pour être en mesure de faire l'atelier 

* Créer un fichier `App.elm` dans le dossier `src` généré par avant
* Copier le code suivant dans le fichier:
```elm
module App exposing (..)

import Browser
import Html exposing (..)


main =
    Browser.sandbox 
        { view = view
        , init = init
        , update = update
        }


type alias Model = 
    {}


type Msg = Msg


init : Model
init =
    {}


view : Model -> Html Msg
view model =
    text "Hello World!"


update : Msg -> Model -> Model
update msg model =
    model
```

## Partir son serveur

Elm est créé pour être simple pour l'utilisateur.
Si on veut tester notre code sur un serveur de développement, il suffit simplement d'écrire la commande suivante `elm reactor`
