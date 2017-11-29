module Atom.Label.View exposing (view)

import Css exposing (..)
import Html.Styled as Html exposing (Attribute, Html)
import Html.Styled.Attributes exposing (css)


view : List (Attribute msg) -> String -> Html msg
view attributes text =
    Html.label
        (css
            [ fontWeight bold
            ]
            :: attributes
        )
        [ Html.text text ]
