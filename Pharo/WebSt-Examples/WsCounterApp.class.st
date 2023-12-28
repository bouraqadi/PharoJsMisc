Class {
	#name : #WsCounterApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentApp',
	#classTraits : 'WsTStaticComponentApp classTrait',
	#category : #'WebSt-Examples-Counter'
}

{ #category : #accessing }
WsCounterApp class >> rootComponentClass [

	^ WsCounterComponent
]
