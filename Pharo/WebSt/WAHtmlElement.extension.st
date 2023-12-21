Extension { #name : #WAHtmlElement }

{ #category : #'*WebSt' }
WAHtmlElement >> renderOn: renderer [

	renderer renderHeadChild: self
]
