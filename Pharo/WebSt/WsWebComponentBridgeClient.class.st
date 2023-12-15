Class {
	#name : #WsWebComponentBridgeClient,
	#superclass : #PjBrowserBridgeClient,
	#category : #'WebSt-WebComponents'
}

{ #category : #accessing }
WsWebComponentBridgeClient >> initializeWithBridge: aBrdige [

	super initializeWithBridge: aBrdige.
	self server html: appClass pageHtml
]
