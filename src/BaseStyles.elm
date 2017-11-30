module BaseStyles exposing (..)

import Css exposing (..)
import Css.Foreign exposing (..)
import Html.Styled exposing (Html)


baseStyles : Html msg
baseStyles =
    global
        [ html
            [ height (pct 100)
            ]
        , body
            [ color (hex "000000")
            , fontFamilies
                [ "Helvetica Nue", "Helvetica", "Arial", .value sansSerif ]
            ]
        ]
