Class {
	#name : #WsToDoListComponent,
	#superclass : #WsTextListComponent,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'addButton'
	],
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #'class initialization' }
WsToDoListComponent class >> tagName [

	^ 'ws-todolist'
]

{ #category : #rendering }
WsToDoListComponent class >> title [

	<pharoJsSkip>
	^ 'ToDo List'
]

{ #category : #rendering }
WsToDoListComponent class >> viewClass [

	<pharoJsSkip>
	^ WsToDoListView
]

{ #category : #initialization }
WsToDoListComponent >> initView [

	super initView.
	addButton := view querySelector: '.addTodoItem'
]

{ #category : #adding }
WsToDoListComponent >> itemComponentClass [

	^ WsToDoListItemComponent
]

{ #category : #initialization }
WsToDoListComponent >> linkModelAndView [

	super linkModelAndView.
	self onClickElement: addButton do: [ self addContent: '' ]
]
