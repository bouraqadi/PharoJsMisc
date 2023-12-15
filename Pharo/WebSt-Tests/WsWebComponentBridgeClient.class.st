Class {
	#name : #WsWebComponentBridgeClient,
	#superclass : #PjBrowserBridgeClient,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #accessing }
WsWebComponentBridgeClient >> initializeWithBridge: aBrdige [
	super initializeWithBridge: aBrdige.
	self server html: appClass html.
]
