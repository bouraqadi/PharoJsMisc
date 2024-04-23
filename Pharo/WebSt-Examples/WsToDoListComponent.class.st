Class {
	#name : #WsToDoListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #accessing }
WsToDoListComponent class >> itemComponentClass [

	^ WsToDoItemComponent 
]

{ #category : #'class initialization' }
WsToDoListComponent class >> tagName [

	^ 'ws-todo-list'
]
