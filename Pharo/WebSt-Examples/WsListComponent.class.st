Class {
	#name : #WsListComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'listView',
		'listModel'
	],
	#category : #'WebSt-Examples-List'
}

{ #category : #'class initialization' }
WsListComponent class >> tagName [

	^'ws-list'
]

{ #category : #rendering }
WsListComponent class >> viewClass [

	<pharoJsSkip>
	^WsListView 
]

{ #category : #adding }
WsListComponent >> addAll: itemContents [
	listModel addAll: itemContents 
]

{ #category : #adding }
WsListComponent >> handleAt: index add: aString [

	| item |
	item := self createElement: #li.
	item className: 'list-group-item'.
	item textContent: aString.
	listView appendChild: item
]

{ #category : #initialization }
WsListComponent >> initModel [

	listModel := WsListModel new.
	listModel -@ #addPort => self
]

{ #category : #initialization }
WsListComponent >> initView [ 
	super initView .
	listView := view querySelector: 'ul'.
]

{ #category : #accessing }
WsListComponent >> listModel [

	^ listModel
]
