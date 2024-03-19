Class {
	#name : #WsCompositeDependantView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsCompositeDependantView >> renderOuterHtmlOn: html [

	html paragraph: self className.
	2 timesRepeat: [ html render: WsCompositeDependantIntermediateView ]
]
