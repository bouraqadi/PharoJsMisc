Class {
	#name : #WsAppForTest,
	#superclass : #PjWebApplication,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #accessing }
WsAppForTest class >> bridgeClientClass [

	<pharoJsSkip>
	^ WsWebComponentBridgeClient 
]

{ #category : #accessing }
WsAppForTest class >> html [
	^WsCounterComponent pageHtml 
]
