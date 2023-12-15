Trait {
	#name : #WsTConcreteWebComponent,
	#category : #'WebSt-WebComponents'
}

{ #category : #rendering }
WsTConcreteWebComponent classSide >> html [

	<jsLiteralGenerator>
	^ String streamContents: [ :str |
		  str
			  << $<;
			  << self tagName;
			  << '></';
			  << self tagName;
			  << $> ]
]

{ #category : #'class initialization' }
WsTConcreteWebComponent classSide >> javascriptInitialize [

	self  registerTag
]

{ #category : #'accessing view' }
WsTConcreteWebComponent classSide >> shadowHtml [

	<jsLiteralGenerator>
	^ self viewFactoryClass html
]

{ #category : #'accessing view' }
WsTConcreteWebComponent classSide >> title [

	<jsLiteralGenerator>
	^ self viewFactoryClass title
]
