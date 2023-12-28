Class {
	#name : #WsTodoListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentApp',
	#classTraits : 'WsTStaticComponentApp classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #'as yet unclassified' }
WsTodoListApp class >> rootComponentClass [

	^WsTodoListComponent 
]
