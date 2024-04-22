Class {
	#name : #WsToDoListComponentOLD,
	#superclass : #WsTextListComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'addButton'
	],
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #rendering }
WsToDoListComponentOLD class >> title [

	<pharoJsSkip>
	^ 'ToDo List'
]

{ #category : #rendering }
WsToDoListComponentOLD class >> viewClass [

	<pharoJsSkip>
	^ WsToDoListView
]

{ #category : #initialization }
WsToDoListComponentOLD >> initView [

	super initView.
	addButton := view querySelector: '.addTodoItem'
]

{ #category : #adding }
WsToDoListComponentOLD >> itemComponentClass [

	^ WsToDoListItemComponentOLD
]

{ #category : #initialization }
WsToDoListComponentOLD >> linkModelAndView [

	super linkModelAndView.
	self onClickElement: addButton do: [ self addContent: '' ]
]
