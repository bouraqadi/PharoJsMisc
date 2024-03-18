Class {
	#name : #WsDependantView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #accessing }
WsDependantView >> dependencies [
	^{WsCssLink url: 'viewCss'. WsJsScript url: 'viewJs'}
]

{ #category : #rendering }
WsDependantView >> renderOuterHtmlOn: html [

	^self
]
