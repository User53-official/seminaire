module Comprendre exposing (..)

import Html exposing (..)


-- Primitif
str : String
str =
    "abcde"


age : Int
age =
    21


-- fonction
toString : Int -> String
toString nombre =
    String.fromInt nombre


{- PARENTHÈSE: -}


listInt : List Int
listInt =
    [ 1, 2, 3 ]


{-

Le type (Int) est remplaçable par n'importe quel autre, exemple Float ou Bool
ou même Msg si on le voudrait

-}


listBool : List Bool
listBool =
    [ True, False, True, True ]


listMsg : List Msg
listMsg =
    [ ChangePassword "motdepasse", ChangeLogin "philipe", Submit ]


-- Les types, déclaration et creation

type alias Model =
    { login : String
    , password : String
    }

{-

struct Model {
    string login;
    string password;
}

-}

-- Un autre exemple:

type alias User =
    { id : Int
    , name : String
    }



type Msg
    = ChangeLogin String
    | ChangePassword String
    | Submit


-- Un autre exemple

type UserStatus
    = Online User
    | Offline


online : UserStatus
online =
    Online { id = 1, name = "Philipe" }


-- Pourquoi voir tout ça?

{-

type Maybe a
    = Just a
    | Nothing

-}


maybeInt : Maybe Int
maybeInt =
    -- un peu comme Integer.parseInt()
    String.toInt "1000"


main =
    case maybeInt of
        Just value ->
            text "Valeur trouvé!"

        Nothing ->
            text "Valeur invalide." 