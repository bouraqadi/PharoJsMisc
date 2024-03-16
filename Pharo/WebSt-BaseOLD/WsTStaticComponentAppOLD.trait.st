Trait {
	#name : #WsTStaticComponentAppOLD,
	#traits : 'WsTSingleComponentApp',
	#classTraits : 'WsTSingleComponentApp classTrait',
	#category : #'WebSt-BaseOLD-Components'
}

{ #category : #rendering }
WsTStaticComponentAppOLD classSide >> newPage [
	<pharoJsSkip>

	^ WsPage with: self rootComponentClass
]
