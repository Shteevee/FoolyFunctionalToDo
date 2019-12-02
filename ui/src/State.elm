module State exposing (init, update)

import Types exposing (..)
-- MODEL

init : Model
init =
  { content = "", toDoList = []}

-- UPDATE

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }
    SubmitTask newContent ->
      updateToDoList newContent model

updateToDoList : String -> Model -> Model
updateToDoList newTask model = 
  if String.isEmpty newTask then
    model
  else  
    { model | toDoList = model.toDoList ++ (List.singleton newTask), content = "" }