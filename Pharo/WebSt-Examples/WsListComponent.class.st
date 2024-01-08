Class {
	#name : #WsListComponent,
	#superclass : #WsComponent,
	#instVars : [
		'listView',
		'listModel'
	],
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsListComponent class >> viewClass [

	<pharoJsSkip>
	^WsListView 
]

{ #category : #adding }
WsListComponent >> add: itemContent [

	listModel add: itemContent
]

{ #category : #adding }
WsListComponent >> addAll: itemContents [

	itemContents do: [: each | self add: each]
]

{ #category : #adding }
WsListComponent >> addComponent: itemComponent [

	| item  |
	item := self createElement: #li.
	item className: 'list-group-item'.
	item appendChild: itemComponent.
	listView appendChild: item
]

{ #category : #adding }
WsListComponent >> handleAt: index add: itemContent [

	| itemComponent |
	itemComponent := self newItemComponent: itemContent.
	self addComponent: itemComponent 
]

{ #category : #initialization }
WsListComponent >> initModel [

	super initModel.
	listModel := WsListModel new.
	listModel -@ #addPort => self; notificationSelector: #handleAt:add:
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

{ #category : #adding }
WsListComponent >> newItemComponent: itemContent [
	self subclassResponsibility 
]
