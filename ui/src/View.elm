module View exposing (view)

import Types exposing (Model, Msg)
import Html exposing (Html, Attribute, div, input, text, button, li, ul, label)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)

view : Model -> Html Msg
view model =
  div []
    [ ul []
    (List.concat [
        List.map toTableRow model.toDoList
    ])
    , input [ placeholder "Enter a task here...", value model.content, onInput Types.Change ] []
    , button [ onClick (Types.SubmitTask model.content) ] [ text "Add Task" ]
    ]

toTableRow: String -> Html Msg
toTableRow item =
  li []
     [
     input [type_ "checkbox"] [],
     label [][text item],
     button [] [ text "x" ]
     ]