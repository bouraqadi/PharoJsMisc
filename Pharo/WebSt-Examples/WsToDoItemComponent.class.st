Class {
	#name : #WsToDoItemComponent,
	#superclass : #WsMvcComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #accessing }
WsToDoItemComponent class >> modelClass [

	^WsToDoItemModel 
]

{ #category : #'class initialization' }
WsToDoItemComponent class >> tagName [

	^ 'ws-todo-item'
]

{ #category : #accessing }
WsToDoItemComponent class >> viewClass [

	<pharoJsSkip>
	^WsToDoItemView 
]
