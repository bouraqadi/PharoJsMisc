Trait {
	#name : #WsTHtmlElementFactoryOLD,
	#category : #'WebSt-ViewsOLD'
}

{ #category : #rendering }
WsTHtmlElementFactoryOLD classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #rendering }
WsTHtmlElementFactoryOLD >> html [
^self renderClass render: self
]

{ #category : #rendering }
WsTHtmlElementFactoryOLD >> pageClass [

	^ WsHtmlPageOLD
]

{ #category : #rendering }
WsTHtmlElementFactoryOLD >> pageHtml [

	^ self pageClass new
		  rootView: self;
		title: self title;
		  html
]

{ #category : #rendering }
WsTHtmlElementFactoryOLD >> renderOuterHtmlOn: html [

	^ self explicitRequirement 
]
