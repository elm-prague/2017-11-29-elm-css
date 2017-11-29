module Main exposing (..)

import BaseStyles
import Html exposing (Html)
import Html.Styled exposing (div, toUnstyled)
import Page.Home.View as Home


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html.Styled.Html Msg
view model =
    div []
        [ BaseStyles.baseStyles
        , Home.view
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view >> toUnstyled
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
