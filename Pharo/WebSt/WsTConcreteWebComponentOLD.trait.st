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
