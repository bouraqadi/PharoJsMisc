Class {
	#name : #WsCounterApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Counter'
}

{ #category : #accessing }
WsCounterApp class >> rootComponentClass [

	^ WsCounterComponent
]
