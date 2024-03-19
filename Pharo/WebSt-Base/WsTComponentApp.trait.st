Trait {
	#name : #WsTComponentApp,
	#category : #'WebSt-Base-Apps'
}

{ #category : #accessing }
WsTComponentApp classSide >> allComponentClasses [

	<pharoJsSkip>
	| allComponentClasses |
	allComponentClasses := IdentitySet new.
	self rootComponentClass addAllComponentClassesTo: allComponentClasses.
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

{ #category : #rendering }
WsTComponentApp classSide >> html [

	<pharoJsSkip>
	^WsRenderer htmlFrom: self
]

{ #category : #rendering }
WsTComponentApp classSide >> renderOn: html [

	<pharoJsSkip>
	html renderAppClass: self
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
