Class {
	#name : #WsCompositeDependantIntermediateView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsCompositeDependantIntermediateView >> renderOuterHtmlOn: html [

	html paragraph: self className.
	3 timesRepeat: [ html render: WsDependantView ]
]
