Trait {
	#name : #WsTHtmlElementFactory,
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTHtmlElementFactory classSide >> html [

	^ self new html
]

{ #category : #rendering }
WsTHtmlElementFactory >> html [
^self renderClass render: self
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
