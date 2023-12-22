Class {
	#name : #WsAppForCompositeTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #rendering }
WsAppForCompositeTest class >> rootComponentClass [

	^WsCompositeComponentForTest 
]
