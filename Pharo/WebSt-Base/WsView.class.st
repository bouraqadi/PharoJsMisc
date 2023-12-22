Class {
	#name : #WsView,
	#superclass : #WsElement,
	#category : #'WebSt-Base-Views'
}

{ #category : #rendering }
WsView class >> pageHtml [
	^self new pageHtml
]

{ #category : #rendering }
WsView class >> title [
	^self name
]

{ #category : #rendering }
WsView >> pageHtml [
		| page |
	page := WsPage with: self.
		page title: self title.
		^page html

]

{ #category : #rendering }
WsView >> renderContentOn: html [
	self subclassResponsibility 
]

{ #category : #rendering }
WsView >> renderOuterHtmlOn: html [

	self renderResourcesOn: html;
		renderContentOn: html
]

{ #category : #rendering }
WsView >> renderResourcesOn: html [
	self resources do: [ : each | html render: each ]
]

{ #category : #accessing }
WsView >> resources [
	^#()
]

{ #category : #rendering }
WsView >> title [

	^ self class title
]
