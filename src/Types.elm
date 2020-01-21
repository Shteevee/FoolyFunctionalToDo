module Types exposing (Model, Msg(..), TaskItem)

type alias Model =
  { content : String
  , toDoList : List TaskItem
  , id : Int
  }

type Msg
  = Change String
  | SubmitTask String
  | RemoveTask Int
  | DoneTask Int

type alias TaskItem =
 (Int, String, Bool)