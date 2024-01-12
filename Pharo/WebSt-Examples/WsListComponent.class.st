Class {
	#name : #WsListComponent,
	#superclass : #WsMvcComponent,
	#instVars : [
		'listView'
	],
	#category : #'WebSt-Examples-List'
}

{ #category : #'instance creation' }
WsListComponent class >> modelClass [
	^WsListModel 
]

{ #category : #rendering }
WsListComponent class >> viewClass [

	<pharoJsSkip>
	^WsListView 
]

{ #category : #adding }
WsListComponent >> add: itemContent [

	model add: itemContent
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
	(model -@ #addPort)
		=> self;
		notificationSelector: #handleAt:add:
]

{ #category : #initialization }
WsListComponent >> initView [ 
	super initView .
	listView := view querySelector: 'ul'.
]

{ #category : #initialization }
WsListComponent >> linkModelAndView [ 
	model items withIndexDo: [ :item :index |
		self handleAt: index add: item ].

]

{ #category : #adding }
WsListComponent >> newItemComponent: itemModel [

	self subclassResponsibility
]
