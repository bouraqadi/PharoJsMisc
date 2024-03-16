Trait {
	#name : #WsTConcreteComponentOLD,
	#category : #'WebSt-BaseOLD-Components'
}

{ #category : #'class initialization' }
WsTConcreteComponentOLD classSide >> javascriptInitialize [

	self  registerTag
]

{ #category : #'accessing view' }
WsTConcreteComponentOLD classSide >> shadowHtml [

	<jsLiteralGenerator>
	^ self viewClass html
]

{ #category : #'accessing view' }
WsTConcreteComponentOLD classSide >> title [

	<jsLiteralGenerator>
	^ self viewClass title
]
