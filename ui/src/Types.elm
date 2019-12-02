module Types exposing (..)

type alias Model =
  { content : String
  , toDoList : List TaskItem
  , id : Int
  }

type Msg
  = Change String
  | SubmitTask String
  | RemoveTask Int

type alias TaskItem =
 (Int, String)