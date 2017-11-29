module Page.Home.View exposing (view)

import Html exposing (Html)
import Molecule.InputWithLabel.View as InputWithLabel


view : Html msg
view =
    Html.div []
        [ Html.h1 [] [ Html.text "Your Elm App is working!" ]
        , InputWithLabel.view { label = "Your name" }
        ]
