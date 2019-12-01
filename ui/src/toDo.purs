module ToDoContainer where

import Prelude

import React.Basic (Component, JSX, createComponent, makeStateless)
import React.Basic.DOM as R
import Table (tableComponent)
import AddRowButton (addRowButton)

component :: Component Unit
component = createComponent "ToDoContainer"

todoComponent :: JSX
todoComponent = unit # makeStateless component \_ ->
    R.div{
        children: [
            tableComponent,
            addRowButton
        ]
    }
    