Trait {
	#name : #WsTComponentApp,
	#category : #'WebSt-Base-Components'
}

{ #category : #dependencies }
WsTComponentApp classSide >> allComponentClasses [

	<pharoJsSkip>
	| allComponentClasses |
	allComponentClasses := IdentitySet new.
	self componentClasses do: [ :componentClass |
		componentClass addAllComponentClassesTo: allComponentClasses ].
	^ allComponentClasses asArray
]

{ #category : #description }
WsTComponentApp classSide >> appClasses [

	<pharoJsSkip>
	^ super appClasses , self allComponentClasses
]

{ #category : #accessing }
WsTComponentApp classSide >> bridgeClientClass [

	<pharoJsSkip>
	^ WsComponentBridgeClient 
]

{ #category : #dependencies }
WsTComponentApp classSide >> componentClasses [
	self explicitRequirement 
]

{ #category : #rendering }
WsTComponentApp classSide >> newPage [

	<pharoJsSkip>
	^ WsPage new
]

{ #category : #rendering }
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

{ #category : #accessing }
WsTComponentApp classSide >> title [

	<pharoJsSkip>
	^ self name
]
