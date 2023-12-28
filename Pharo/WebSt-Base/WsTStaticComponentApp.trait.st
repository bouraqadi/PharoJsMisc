Trait {
	#name : #WsTStaticComponentApp,
	#traits : 'WsTSingleComponentApp',
	#classTraits : 'WsTSingleComponentApp classTrait',
	#category : #'WebSt-Base-Components'
}

{ #category : #rendering }
WsTStaticComponentApp classSide >> newPage [
	<pharoJsSkip>

	^ WsPage with: self rootComponentClass
]
