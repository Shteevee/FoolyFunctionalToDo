module View exposing (view)

import Types exposing (..)
import Html exposing (Html, Attribute, div, input, text, button, li, ul, label)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import Svg exposing (svg, use)

view : Model -> Html Msg
view model =
  div [ class "FF-Container" ]
    [
    ul [ class "FF-List" ] (List.concat [ List.map toListItem model.toDoList ]),
    input [ class "FF-Text-Input", placeholder "Enter a task here...", value model.content, onInput Change ] [],
    button [ class "FF-Submit-Button", onClick (SubmitTask model.content) ] [ text "Add Task" ]
    ]

toListItem: TaskItem -> Html Msg
toListItem (id, item, done) =
  if done then
    li [ class "FF-List-Element" ]
      [
      input [ type_ "checkbox", onClick (DoneTask id) ] [ ],
      label [ class "FF-Label-Done" ][ text item ],
      button [ onClick (RemoveTask id) ] [ text "X" ]
      ]
  else
    li [ class "FF-List-Element" ]
      [
      input [ type_ "checkbox", onClick (DoneTask id) ] [ ],
      label [ class "FF-Label" ][ text item ],
      button [ onClick (RemoveTask id) ] [ text "X" ]
      ]