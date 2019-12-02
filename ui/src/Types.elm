module Types exposing (..)

type alias Model =
  { content : String
  , toDoList : List String
  }

type Msg
  = Change String
  | SubmitTask String
