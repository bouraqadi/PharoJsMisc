Trait {
	#name : #WsTComponentApp,
	#category : #'WebSt-Components'
}

{ #category : #accessing }
WsTComponentApp classSide >> bridgeClientClass [

	<pharoJsSkip>
	^ WsComponentBridgeClient 
]

{ #category : #rendering }
WsTComponentApp classSide >> pageHtml [

<pharoJsSkip>
	| page |
	page := WsPage with: self rootComponentClass.
	page title: self title.
	page addJsAt: self appJsFileName.
	^ page html
]

{ #category : #rendering }
WsTComponentApp classSide >> rootComponentClass [
	self subclassResponsibility 
]

{ #category : #rendering }
WsTComponentApp classSide >> title [

<pharoJsSkip>
	^ self rootComponentClass title
]
