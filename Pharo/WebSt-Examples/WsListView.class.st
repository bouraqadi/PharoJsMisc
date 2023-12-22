Class {
	#name : #WsListView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsListView class >> title [
	^'List'
]

{ #category : #rendering }
WsListView >> renderContentOn: html [

	html div
		class: 'list-group';
		with: [ self renderItemsOn: html ]
]

{ #category : #rendering }
WsListView >> renderItemsOn: html [
	WsListItemComponent 
]
