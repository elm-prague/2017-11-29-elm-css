module Atom.Input.View exposing (view)

import Atom.Input.Styles as Styles exposing (helpers)
import Html exposing (Attribute, Html)


view : List (Attribute msg) -> Html msg
view attributes =
    Html.input
        (helpers.class [ Styles.Input ] :: attributes)
        []
