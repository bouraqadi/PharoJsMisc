Class {
	#name : #WsDependantView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsDependantView >> renderOuterHtmlOn: html [

	html paragraph: self className
]

{ #category : #accessing }
WsDependantView >> resources [

	^ {
		  (WsCssLink url: 'viewCss').
		  (WsJsScript url: 'viewJs') }
]
