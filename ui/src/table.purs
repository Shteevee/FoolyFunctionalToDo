module Table where

import Prelude

import React.Basic (Component, JSX, createComponent, makeStateless)
import React.Basic.DOM (text)
import React.Basic.DOM as R

component :: Component Unit
component = createComponent "ToDoTable"

tableComponent :: JSX
tableComponent = unit # makeStateless component \_ ->
    R.table
        {
        id: "ToDoTable",
        children: [
            R.caption
            {
            children: [
                text "ToDo List"
            ]
            }
        ]
        }