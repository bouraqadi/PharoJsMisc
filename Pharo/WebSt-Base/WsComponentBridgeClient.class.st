Class {
	#name : #WsComponentBridgeClient,
	#superclass : #PjBrowserBridgeClient,
	#category : #'WebSt-Base-Components'
}

{ #category : #accessing }
WsComponentBridgeClient >> initializeWithBridge: aBrdige [

	super initializeWithBridge: aBrdige.
	self server html: appClass pageHtml
]
