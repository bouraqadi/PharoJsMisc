Trait {
	#name : #WsTHtmlElement,
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTHtmlElement classSide >> html [

	^ self new html
]

{ #category : #rendering }
WsTHtmlElement >> html [
^self renderClass render: self
]

{ #category : #rendering }
WsTHtmlElement >> renderClass [
	^WsHtmlRenderer
]

{ #category : #rendering }
WsTHtmlElement >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTHtmlElement >> renderOn: aRenderer [
	self renderContentOn: aRenderer
]
