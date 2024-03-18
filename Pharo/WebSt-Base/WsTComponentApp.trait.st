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

{ #category : #rendering }
WsTComponentApp classSide >> html [

	<pharoJsSkip>
	| renderer |
	renderer := WsRenderer new.
	renderer render: self.
	^ renderer html
]

{ #category : #rendering }
WsTComponentApp classSide >> renderOn: html [

	<pharoJsSkip>
	html renderApp: self
]

{ #category : #rendering }
WsTComponentApp classSide >> rootComponentClass [

	<pharoJsSkip>
	self explicitRequirement
]

{ #category : #rendering }
WsTComponentApp classSide >> title [

	<pharoJsSkip>
	^ self rootComponentClass title
]
