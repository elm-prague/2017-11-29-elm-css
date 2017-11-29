module Molecule.InputWithLabel.View exposing (view)

import Atom.Input.View as Input
import Atom.Label.View as Label
import Atom.Row.View as Row
import Html.Styled as Html exposing (Html)


type alias ViewModel =
    { label : String
    }


view : ViewModel -> Html msg
view { label } =
    Row.view
        [ Row.view
            [ Label.view [] (label ++ ":") ]
        , Input.view []
        ]
