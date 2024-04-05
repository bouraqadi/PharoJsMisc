Class {
	#name : #WsListViewOLD,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #rendering }
WsListViewOLD class >> title [
	^'List'
]

{ #category : #rendering }
WsListViewOLD >> renderContentOn: html [

	html unorderedList 
		class: 'list-group'
]
