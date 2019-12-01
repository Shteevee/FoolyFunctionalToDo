module Main exposing (..)

import Browser
import Html exposing (Html, Attribute, div, input, text, button, table, thead, th, tr, td)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
  { content : String
  , toDoList : List String
  }


init : Model
init =
  { content = "", toDoList = []}



-- UPDATE


type Msg
  = Change String
  | SubmitTask String


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
    

-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ table []
    (List.concat [
        [ thead []
            [ th [][text "Task"]
            , th [][text "Remove"]
            ]
        ],
        List.map toTableRow model.toDoList
    ])
    , input [ placeholder "Enter a task here...", value model.content, onInput Change ] []
    , button [ onClick (SubmitTask model.content) ] [ text "Add Task" ]
    ]

toTableRow: String -> Html Msg
toTableRow item =
  tr []
     [
     td[][text item],
     td[][text "x"]
     ]