Class {
	#name : #WsAppForComponentTest,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Tests-Components'
}

{ #category : #accessing }
WsAppForComponentTest class >> rootComponentClass [

	^ WsCounterComponent
]
