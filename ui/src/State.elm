module State exposing (init, update)

import Types exposing (..)

init : Model
init =
  { content = ""
  , toDoList = []
  , id = 0
  }

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }
    SubmitTask newContent ->
      updateToDoList newContent model
    RemoveTask taskID ->
      removeTaskFromToDoList taskID model

updateToDoList : String -> Model -> Model
updateToDoList newTask model = 
  if String.isEmpty newTask then
    model
  else
    { model | toDoList = model.toDoList ++ [(model.id, newTask)]
    , content = "" 
    , id = model.id+1
    }

removeTaskFromToDoList : Int -> Model -> Model
removeTaskFromToDoList id model =
  { model | toDoList = List.filter (\(x, y) -> x /= id) model.toDoList }