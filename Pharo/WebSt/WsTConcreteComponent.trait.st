Trait {
	#name : #WsTConcreteComponent,
	#category : #'WebSt-WebComponents'
}

{ #category : #'class initialization' }
WsTConcreteComponent classSide >> javascriptInitialize [

	self  registerTag
]

{ #category : #'accessing view' }
WsTConcreteComponent classSide >> shadowHtml [

	<jsLiteralGenerator>
	^ self viewClass html
]

{ #category : #'accessing view' }
WsTConcreteComponent classSide >> title [

	<jsLiteralGenerator>
	^ self viewClass title
]
