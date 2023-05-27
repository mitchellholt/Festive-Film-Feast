module Main exposing (..)

import Html exposing (Html)
import Html.Attributes exposing (class)


main : Html msg
main =
    Html.div
        [ class "bg-black text-white h-screen w-screen grid place-items-center" ]
        [ Html.text "Elm and Tailwind with Nix!" ]
