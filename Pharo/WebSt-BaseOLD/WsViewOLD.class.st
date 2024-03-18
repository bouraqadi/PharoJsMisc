Class {
	#name : #WsViewOLD,
	#superclass : #WsElement,
	#category : #'WebSt-BaseOLD-Views'
}

{ #category : #rendering }
WsViewOLD class >> pageHtml [
	^self new pageHtml
]

{ #category : #rendering }
WsViewOLD class >> renderOn: html [

	html render: self new
]

{ #category : #rendering }
WsViewOLD class >> title [
	^self name
]

{ #category : #rendering }
WsViewOLD >> pageHtml [
		| page |
	page := WsPage with: self.
		page title: self title.
		^page html

]

{ #category : #rendering }
WsViewOLD >> renderContentOn: html [
	self subclassResponsibility 
]

{ #category : #rendering }
WsViewOLD >> renderOuterHtmlOn: html [

	self renderResourcesOn: html;
		renderContentOn: html
]

{ #category : #rendering }
WsViewOLD >> renderResourcesOn: html [
	self resources do: [ : each | html render: each ]
]

{ #category : #accessing }
WsViewOLD >> resources [
	^#()
]

{ #category : #rendering }
WsViewOLD >> title [

	^ self class title
]
