Class {
	#name : #WsAppForTest,
	#superclass : #PjMinimalWebApplication,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #initialization }
WsAppForTest >> initialize [

	| counter |
	super initialize.
	counter := WsCounterComponent new.
	document body appendChild: counter
]
