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

	^ WsListModel
]

{ #category : #'instance creation' }
WsListComponent class >> viewClass [

	<pharoJsSkip>
	^ WsListView
]

{ #category : #actions }
WsListComponent >> addItemComponent: itemComponent [

	| item |
	item := self createElement: #li.
	item className: 'list-group-item'.
	item appendChild: itemComponent.
	listView appendChild: item
]

{ #category : #initialization }
WsListComponent >> displayModel [
	model items withIndexDo: [ :item :index |
		self handleAdd: item ]
]

{ #category : #actions }
WsListComponent >> handleAdd: itemModel [
	| itemComponent |
	itemComponent := self newItemComponent: itemModel.
	self addItemComponent: itemComponent
]

{ #category : #initialization }
WsListComponent >> initModel [

	super initModel.
	model -@ #addPort => [ :itemModel | self handleAdd: itemModel ].
	self displayModel
]

{ #category : #initialization }
WsListComponent >> initView [

	super initView.
	listView := view querySelector: 'ul'
]

{ #category : #actions }
WsListComponent >> itemComponentClass [

	self subclassResponsibility
]

{ #category : #actions }
WsListComponent >> newItemComponent: itemModel [

	^ self itemComponentClass model: itemModel
]
