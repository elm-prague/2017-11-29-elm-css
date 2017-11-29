module Atom.Label.Styles exposing (CssClasses(..), css, helpers)

import Css exposing (..)
import Css.Foreign exposing (class)
import DEPRECATED.Css.File exposing (Stylesheet, stylesheet)
import DEPRECATED.Css.Namespace exposing (namespace)
import Html.CssHelpers exposing (Namespace, withNamespace)


type CssClasses
    = Label


moduleNamespace : String
moduleNamespace =
    "AtomLabel"


helpers : Namespace String CssClasses id msg
helpers =
    withNamespace moduleNamespace


css : Stylesheet
css =
    (stylesheet << namespace moduleNamespace)
        [ class Label
            [ fontWeight bold
            ]
        ]
