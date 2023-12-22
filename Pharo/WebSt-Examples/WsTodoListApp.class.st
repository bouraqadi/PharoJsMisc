Class {
	#name : #WsTodoListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsTodoListApp class >> rootComponentClass [

	^WsTodoListComponent 
]
