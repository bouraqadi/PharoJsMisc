Trait {
	#name : #WsTComponentApp,
	#category : #'WebSt-Base-Apps'
}

{ #category : #description }
WsTComponentApp classSide >> appClasses [

	<pharoJsSkip>
	^ super appClasses , {self rootComponentClass}
]

{ #category : #accessing }
WsTComponentApp classSide >> bridgeClientClass [

	<pharoJsSkip>
	^ WsComponentBridgeClient
]

{ #category : #description }
WsTComponentApp classSide >> newPage [

	<pharoJsSkip>
	^ WsPage with: self rootComponentClass
]

{ #category : #description }
WsTComponentApp classSide >> pageHtml [

	<pharoJsSkip>
	| page renderer |
	page := self newPage.
	page title: self title.
	page addJsAt: self appJsFileName.
	renderer := WsRenderer new.
	renderer render: page.
	^ renderer html
]

{ #category : #description }
WsTComponentApp classSide >> rootComponentClass [

	self explicitRequirement
]

{ #category : #description }
WsTComponentApp classSide >> title [
	^self rootComponentClass title
]
