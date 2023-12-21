Class {
	#name : #WsCompositeView,
	#superclass : #WsView,
	#instVars : [
		'children'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #accessing }
WsCompositeView >> addChild: aChild [
	children add: aChild
]

{ #category : #initialization }
WsCompositeView >> initialize [ 
	super initialize.
	children := OrderedCollection new
]

{ #category : #rendering }
WsCompositeView >> renderInnerHtmlOn: html [
	children do: [ :each | html render: each ]
]
