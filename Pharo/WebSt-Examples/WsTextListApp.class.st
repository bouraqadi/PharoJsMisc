Class {
	#name : #WsTextListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsTextListApp class >> rootComponentClass [

	^WsTextListComponent 
]
