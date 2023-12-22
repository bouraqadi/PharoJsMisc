Class {
	#name : #WsAppForTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTWebComponentApp',
	#classTraits : 'WsTWebComponentApp classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #accessing }
WsAppForTest class >> rootComponentClass [

	^ WsCounterComponent
]
