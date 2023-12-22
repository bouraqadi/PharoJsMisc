Class {
	#name : #WsListItemView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsListItemView >> renderContentOn: html [

	html listItem class: 'list-group-item'; with: [ html text: 'item' ]
]
