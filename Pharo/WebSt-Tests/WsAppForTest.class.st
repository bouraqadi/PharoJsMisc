Class {
	#name : #WsAppForTest,
	#superclass : #PjWebApplication,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #rendering }
WsAppForTest class >> html [
	^WsCounterComponent pageHtml
]

{ #category : #initialization }
WsAppForTest >> initialize [

	| counter |
	super initialize.
	counter := WsCounterComponent new.
	document body appendChild: counter
]
