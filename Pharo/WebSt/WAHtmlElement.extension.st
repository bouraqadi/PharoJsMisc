Extension { #name : #WAHtmlElement }

{ #category : #'*WebSt' }
WAHtmlElement >> renderContentOn: renderer [

	^self
]

{ #category : #'*WebSt' }
WAHtmlElement >> renderOn: renderer [

	renderer renderHeadChild: self
]
