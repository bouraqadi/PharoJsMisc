Class {
	#name : #WsListView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsListView class >> title [
	^'List'
]

{ #category : #rendering }
WsListView >> renderContentOn: html [

	html unorderedList 
		class: 'list-group';
		with: [ self renderItemsOn: html ]
]

{ #category : #rendering }
WsListView >> renderItemsOn: html [
	WsListItemComponent 
]
