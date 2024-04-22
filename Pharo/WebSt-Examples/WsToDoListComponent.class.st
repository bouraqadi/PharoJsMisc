Class {
	#name : #WsToDoListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #'class initialization' }
WsToDoListComponent class >> tagName [

	^ 'ws-todolist'
]
