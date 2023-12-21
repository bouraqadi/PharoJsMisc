Class {
	#name : #WsCustomView,
	#superclass : #WsView,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsCustomView class >> pageHtml [
	^self new pageHtml
]

{ #category : #rendering }
WsCustomView >> pageHtml [
		| page |
	page := WsPage with: self.
		page titleText: self titleText.
		^page html

]

{ #category : #rendering }
WsCustomView >> titleText [

	^ self className
]
