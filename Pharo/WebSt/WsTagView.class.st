Class {
	#name : #WsTagView,
	#superclass : #WsView,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTagView >> renderInnerHtmlOn: html [
	self subclassResponsibility 
]

{ #category : #rendering }
WsTagView >> renderOuterHtmlOn: html [

	html
		tag: self tag
		with: [ self renderInnerHtmlOn: html ]
]

{ #category : #accessing }
WsTagView >> tag [
	self subclassResponsibility 
]
