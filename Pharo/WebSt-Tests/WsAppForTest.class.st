Class {
	#name : #WsAppForTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTWebComponentApp',
	#classTraits : 'WsTWebComponentApp classTrait',
	#category : #'WebSt-Tests-Kernel'
}

{ #category : #accessing }
WsAppForTest class >> rootComponentClass [

	^ WsCounterComponent
]
