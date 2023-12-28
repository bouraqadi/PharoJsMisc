Class {
	#name : #WsListComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'list'
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
WsListComponent >> add: itemContent [

	| item |
	item := self createElement: #li.
	item className: 'list-group-item'.
	item innerHTML: itemContent.
	list appendChild: item
]

{ #category : #adding }
WsListComponent >> addAll: itemContents [

	itemContents do: [ :each | self add: each ]
]

{ #category : #initialization }
WsListComponent >> initModel [

	^self
]

{ #category : #initialization }
WsListComponent >> initView [ 
	super initView .
	list := view querySelector: 'ul'.
]
