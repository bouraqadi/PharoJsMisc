Class {
	#name : #WsListView,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
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
