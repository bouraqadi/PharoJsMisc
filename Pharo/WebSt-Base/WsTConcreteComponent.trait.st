Trait {
	#name : #WsTConcreteComponent,
	#category : #'WebSt-Base-Components'
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
