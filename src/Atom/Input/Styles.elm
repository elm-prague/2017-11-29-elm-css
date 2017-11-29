module Atom.Input.Styles exposing (CssClasses(..), css, helpers)

import Css exposing (..)
import Css.Foreign exposing (class)
import DEPRECATED.Css.File exposing (Stylesheet, stylesheet)
import DEPRECATED.Css.Namespace exposing (namespace)
import Html.CssHelpers exposing (Namespace, withNamespace)


type CssClasses
    = Input


moduleNamespace : String
moduleNamespace =
    "AtomInput"


helpers : Namespace String CssClasses id msg
helpers =
    withNamespace moduleNamespace


css : Stylesheet
css =
    (stylesheet << namespace moduleNamespace)
        [ class Input
            [ fontSize (px 14)
            , color (hex "222222")
            , padding (px 4)
            , border3 (px 1) solid (hex "cccccc")
            ]
        ]
