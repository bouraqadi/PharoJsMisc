Class {
	#name : #WsListView,
	#superclass : #WsBootstrap5View,
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsListView >> renderOuterHtmlOn: html [

	html unorderedList class: 'list-group'
]
