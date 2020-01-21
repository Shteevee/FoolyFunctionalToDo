module Main exposing (main)

import Browser
import State
import View

main =
  Browser.sandbox { init = State.init, update = State.update, view = View.view }    