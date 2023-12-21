Class {
	#name : #WsTagView,
	#superclass : #WsView,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTagView >> renderContentOn: html [

	html
		tag: self tag
		with: [ self renderInnerHtmlOn: html ]
]

{ #category : #rendering }
WsTagView >> renderInnerHtmlOn: html [
	self subclassResponsibility 
]

{ #category : #accessing }
WsTagView >> tag [
	self subclassResponsibility 
]
