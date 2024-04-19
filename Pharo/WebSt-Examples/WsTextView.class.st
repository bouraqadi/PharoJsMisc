Class {
	#name : #WsTextView,
	#superclass : #WsView,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsTextView >> renderOuterHtmlOn: html [

	html span class: 'display'
]
