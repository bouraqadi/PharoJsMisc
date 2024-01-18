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
WsListComponent >> addAllContents: itemContents [

	itemContents do: [ :each | self addContent: each ]
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
WsListComponent >> addContent: itemContent [

	| itemModel |
	itemModel := self itemComponentClass newModel.
	self initItemModel: itemModel with: itemContent.
	model add: itemModel
]

{ #category : #adding }
WsListComponent >> handleAt: index add: itemModel [

	| itemComponent |
	itemComponent := self newItemComponent: itemModel.
	self addComponent: itemComponent 
]

{ #category : #adding }
WsListComponent >> initItemModel: itemModel with: itemContent [
	self subclassResponsibility 
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

{ #category : #adding }
WsListComponent >> itemComponentClass [
	self subclassResponsibility 
]

{ #category : #initialization }
WsListComponent >> linkModelAndView [

	super linkModelAndView.
	model items withIndexDo: [ :item :index |
		self handleAt: index add: item ]
]

{ #category : #adding }
WsListComponent >> newItemComponent: itemModel [

	^ self itemComponentClass model: itemModel
]
