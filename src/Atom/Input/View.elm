module Atom.Input.View exposing (view)

import Css exposing (..)
import Html.Styled as Html exposing (Attribute, Html)
import Html.Styled.Attributes exposing (css)


view : List (Attribute msg) -> Html msg
view attributes =
    Html.input
        (css
            [ fontSize (px 14)
            , color (hex "222222")
            , padding (px 4)
            , border3 (px 1) solid (hex "cccccc")
            , borderRadius (px 4)
            ]
            :: attributes
        )
        []
