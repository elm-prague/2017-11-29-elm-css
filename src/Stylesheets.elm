port module Stylesheets exposing (..)

import Atom.Input.Styles
import Atom.Label.Styles
import BaseStyles
import Css
import DEPRECATED.Css.File as CssFile exposing (CssCompilerProgram, CssFileStructure, Stylesheet)


port files : CssFileStructure -> Cmd msg


appCss : List Stylesheet
appCss =
    [ Atom.Input.Styles.css
    , Atom.Label.Styles.css
    ]


fileStructure : CssFileStructure
fileStructure =
    CssFile.toFileStructure
        [ ( "main.css"
          , CssFile.compile ([ BaseStyles.css ] ++ appCss)
          )
        ]


main : CssCompilerProgram
main =
    CssFile.compiler files fileStructure
