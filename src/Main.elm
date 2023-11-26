module Main exposing (..)

import Browser
import Html exposing (Html)
import Html.Attributes as Html exposing (class)


type Model
    = Model


type Msg
    = Msg


type alias Flags =
    ()


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( Model, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    Html.div
        [ class "w-screen overflow-clip h-screen bg-black text-white" ]
        [ title
        , Html.div
            [ class "bg-no-repeat bg-[length:100%_100%] h-full w-full"
            , Html.style "background-image" "url('assets/stocktree.jpg')"
            ]
            [ Html.text "hi mum" ]
        ]


title : Html Msg
title =
    Html.div
        [ class "w-full text-center text-2xl font-bold" ]
        [ Html.text "FESTIVE FILM FEAST" ]
