Class {
	#name : #WsTodoListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentApp',
	#classTraits : 'WsTStaticComponentApp classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #accessing }
WsTodoListApp class >> rootComponentClass [

	^WsTodoListComponent 
]
