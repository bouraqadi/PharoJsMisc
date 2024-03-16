Trait {
	#name : #WsTComponentAppOLD,
	#category : #'WebSt-BaseOLD-Components'
}

{ #category : #dependencies }
WsTComponentAppOLD classSide >> allComponentClasses [

	<pharoJsSkip>
	| allComponentClasses |
	allComponentClasses := IdentitySet new.
	self componentClasses do: [ :componentClass |
		componentClass addAllComponentClassesTo: allComponentClasses ].
	^ allComponentClasses asArray
]

{ #category : #description }
WsTComponentAppOLD classSide >> appClasses [

	<pharoJsSkip>
	^ super appClasses , self allComponentClasses
]

{ #category : #accessing }
WsTComponentAppOLD classSide >> bridgeClientClass [

	<pharoJsSkip>
	^ WsComponentBridgeClient 
]

{ #category : #dependencies }
WsTComponentAppOLD classSide >> componentClasses [
	self explicitRequirement 
]

{ #category : #rendering }
WsTComponentAppOLD classSide >> newPage [

	<pharoJsSkip>
	^ WsPage new
]

{ #category : #rendering }
WsTComponentAppOLD classSide >> pageHtml [

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
WsTComponentAppOLD classSide >> title [

	<pharoJsSkip>
	^ self name
]
