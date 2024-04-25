Class {
	#name : #WsToDoListComponent,
	#superclass : #WsTextListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'titleDisplay'
	],
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #accessing }
WsToDoListComponent class >> itemComponentClass [

	^ WsToDoItemComponent 
]

{ #category : #accessing }
WsToDoListComponent class >> modelClass [
	^WsToDoListModel 
	
]

{ #category : #'class initialization' }
WsToDoListComponent class >> tagName [

	^ 'ws-todo-list'
]

{ #category : #accessing }
WsToDoListComponent class >> viewClass [

	<pharoJsSkip>
	^ WsToDoListView
]

{ #category : #initialization }
WsToDoListComponent >> displayModel [

	super displayModel.
	self displayTitle: model title
]

{ #category : #actions }
WsToDoListComponent >> displayTitle: aString [

	titleDisplay textContent: aString
]

{ #category : #initialization }
WsToDoListComponent >> initModel [

	super initModel.
	model -@ #titlePort
	=> [ :newTitle | self displayTitle: newTitle ].

]

{ #category : #initialization }
WsToDoListComponent >> initView [

	| addButton |
	super initView.
	titleDisplay := view querySelector: '.titleDisplay'.
	addButton := view querySelector: '.addItemButton'.
	self onClickElement: addButton do: [ self addItem ]
]
