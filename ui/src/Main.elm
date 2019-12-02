module Main exposing (..)

import Browser
import State
import View


main =
  Browser.sandbox { init = State.init, update = State.update, view = View.view }    