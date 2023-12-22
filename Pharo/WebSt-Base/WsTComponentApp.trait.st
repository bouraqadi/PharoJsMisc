Trait {
	#name : #WsTComponentApp,
	#category : #'WebSt-Base-Components'
}

{ #category : #description }
WsTComponentApp classSide >> appClasses [
	^super appClasses, self componentClasses
]

{ #category : #accessing }
WsTComponentApp classSide >> bridgeClientClass [

	<pharoJsSkip>
	^ WsComponentBridgeClient 
]

{ #category : #description }
WsTComponentApp classSide >> componentClasses [

	^ self rootComponentClass allComponentClasses
]

{ #category : #rendering }
WsTComponentApp classSide >> pageHtml [

	<pharoJsSkip>
	| page renderer |
	page := WsPage with: self rootComponentClass.
	page title: self title.
	page addJsAt: self appJsFileName.
	renderer := WsRenderer new.
	renderer render: page.
	^ renderer html
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
