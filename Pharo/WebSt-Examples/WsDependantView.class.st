Class {
	#name : #WsDependantView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #accessing }
WsDependantView >> resources [

	^ {
		  (WsCssLink url: 'viewCss').
		  (WsJsScript url: 'viewJs') }
]
