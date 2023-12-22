Trait {
	#name : #WsTConcreteWebComponentOLD,
	#category : #'WebSt-WebComponents'
}

{ #category : #rendering }
WsTConcreteWebComponentOLD classSide >> html [

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
WsTConcreteWebComponentOLD classSide >> javascriptInitialize [

	self  registerTag
]

{ #category : #'accessing view' }
WsTConcreteWebComponentOLD classSide >> shadowHtml [

	<jsLiteralGenerator>
	^ self viewClass html
]

{ #category : #'accessing view' }
WsTConcreteWebComponentOLD classSide >> title [

	<jsLiteralGenerator>
	^ self viewClass title
]
