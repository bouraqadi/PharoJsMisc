Trait {
	#name : #WsTHtmlElementFactory,
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTHtmlElementFactory classSide >> html [

	^ self new html
]

{ #category : #rendering }
WsTHtmlElementFactory classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #rendering }
WsTHtmlElementFactory >> html [
^self renderClass render: self
]

{ #category : #rendering }
WsTHtmlElementFactory >> pageClass [

	^ WsHtmlPage
]

{ #category : #rendering }
WsTHtmlElementFactory >> pageHtml [

	^ self pageClass new
		  rootView: self;
		title: self title;
		  html
]

{ #category : #rendering }
WsTHtmlElementFactory >> renderClass [
	^WsHtmlRenderer
]

{ #category : #rendering }
WsTHtmlElementFactory >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTHtmlElementFactory >> renderOn: aRenderer [

	self explicitRequirement 
	
]
