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

{ #category : #rendering }
WsTConcreteWebComponent classSide >> pageHtml [

	<jsLiteralGenerator>
	^ self viewFactoryClass pageHtml
]

{ #category : #'accessing view' }
WsTConcreteWebComponent classSide >> shadowHtml [

	<jsLiteralGenerator>
	^ self viewFactoryClass html
]
