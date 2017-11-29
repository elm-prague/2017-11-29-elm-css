module Atom.Label.View exposing (view)

import Atom.Label.Styles as Styles exposing (helpers)
import Html exposing (Attribute, Html)


view : List (Attribute msg) -> String -> Html msg
view attributes text =
    Html.label
        (helpers.class [ Styles.Label ] :: attributes)
        [ Html.text text ]
