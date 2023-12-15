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

	| page |
	page := WsHtmlPage new.
	page title: self title.
	page useJsAt: self appJsFileName. 
	page rootView: self rootComponentClass.
	^page html
]

{ #category : #rendering }
WsTWebComponentApp classSide >> rootComponentClass [
	self subclassResponsibility 
]

{ #category : #rendering }
WsTWebComponentApp classSide >> title [
	^self rootComponentClass title
]
