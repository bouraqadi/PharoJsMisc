Class {
	#name : #WsAppForCompositeTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentApp',
	#classTraits : 'WsTStaticComponentApp classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #'as yet unclassified' }
WsAppForCompositeTest class >> rootComponentClass [

	^WsCompositeComponentForTest 
]
