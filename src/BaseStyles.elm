module BaseStyles exposing (..)

import Css exposing (..)
import Css.Foreign exposing (..)
import DEPRECATED.Css.File exposing (Stylesheet, stylesheet)
import DEPRECATED.Css.Namespace exposing (namespace)


css : Stylesheet
css =
    (stylesheet << namespace "base")
        [ html
            [ height (pct 100)
            ]
        , body
            [ color (hex "000000")
            , fontFamilies
                [ "Helvetica Nue", "Helvetica", "Arial", .value sansSerif ]
            ]
        ]
