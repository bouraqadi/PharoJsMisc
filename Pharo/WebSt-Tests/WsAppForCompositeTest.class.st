Class {
	#name : #WsAppForCompositeTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentApp',
	#classTraits : 'WsTStaticComponentApp classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #accessing }
WsAppForCompositeTest class >> rootComponentClass [

	^WsCompositeComponentForTest 
]
