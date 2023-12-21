Class {
	#name : #WsPageElement,
	#superclass : #WsTagView,
	#instVars : [
		'children'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #accessing }
WsPageElement >> add: aChild [

	children add: aChild
]

{ #category : #initialization }
WsPageElement >> initialize [ 
	super initialize.
	children := OrderedCollection new
]

{ #category : #rendering }
WsPageElement >> renderInnerHtmlOn: html [
	children do: [ :each | html render: each ]
]
