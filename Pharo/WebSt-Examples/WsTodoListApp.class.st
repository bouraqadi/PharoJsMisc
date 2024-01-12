Class {
	#name : #WsToDoListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentApp',
	#classTraits : 'WsTStaticComponentApp classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #accessing }
WsToDoListApp class >> rootComponentClass [

	^WsToDoListComponent 
]
