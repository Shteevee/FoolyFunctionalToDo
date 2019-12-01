module AddRowButton where

import Prelude

import React.Basic (Component, JSX, createComponent, makeStateless)
import React.Basic.DOM (text)
import React.Basic.DOM as R
import Web.DOM.NonElementParentNode (getElementById)

component :: Component Unit
component = createComponent "ToDoTable"

addRowButton :: JSX
addRowButton = unit # makeStateless component \_ ->
    R.button
        {
        children: [
            text "Add item"
        ]
        }