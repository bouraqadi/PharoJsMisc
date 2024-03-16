Class {
	#name : #WsAppForCompositeTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentAppOLD',
	#classTraits : 'WsTStaticComponentAppOLD classTrait',
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #accessing }
WsAppForCompositeTest class >> rootComponentClass [

	^WsCompositeComponentForTest 
]
