Class {
	#name : #WsCompositeDependantView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsCompositeDependantView >> renderOuterHtmlOn: html [
	super renderOuterHtmlOn: html.
	html render: WsDependantView 
]
