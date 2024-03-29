Class {
	#name : #WsListView,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #rendering }
WsListView class >> title [
	^'List'
]

{ #category : #rendering }
WsListView >> renderContentOn: html [

	html unorderedList 
		class: 'list-group'
]
