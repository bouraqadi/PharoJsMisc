Trait {
	#name : #WsTWebComponentApp,
	#category : #'WebSt-WebComponents'
}

{ #category : #accessing }
WsTWebComponentApp classSide >> bridgeClientClass [

	<pharoJsSkip>
	^ WsWebComponentBridgeClient 
]

{ #category : #rendering }
WsTWebComponentApp classSide >> pageHtml [

	^ self rootComponentClass pageHtml
]

{ #category : #rendering }
WsTWebComponentApp classSide >> rootComponentClass [
	self subclassResponsibility 
]
