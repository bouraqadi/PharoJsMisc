Class {
	#name : #WsComponentBridgeClient,
	#superclass : #PjBrowserBridgeClient,
	#category : #'WebSt-WebComponents'
}

{ #category : #accessing }
WsComponentBridgeClient >> initializeWithBridge: aBrdige [

	super initializeWithBridge: aBrdige.
	self server html: appClass pageHtml
]
