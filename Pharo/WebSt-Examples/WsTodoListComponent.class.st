Class {
	#name : #WsTodoListComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #'class initialization' }
WsTodoListComponent class >> tagName [

	^ 'ws-todolist'
]

{ #category : #rendering }
WsTodoListComponent class >> title [

	<pharoJsSkip>
	^ 'ToDo List'
]

{ #category : #rendering }
WsTodoListComponent class >> viewClass [

	<pharoJsSkip>
	^WsTodoListView 
]

{ #category : #initialization }
WsTodoListComponent >> initModel [
	
]
