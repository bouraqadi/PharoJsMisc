Class {
	#name : #WsListComponent,
	#superclass : #WsMvcComponent,
	#instVars : [
		'listView'
	],
	#category : #'WebSt-Examples-List'
}

{ #category : #actions }
WsListComponent class >> itemComponentClass [

	| aWsListComponent |
	aWsListComponent := self new.

	aWsListComponent subclassResponsibility
]

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

{ #category : #actions }
WsListComponent >> displayItemModel: itemModel [

	| itemComponent |
	itemComponent := self newItemComponent: itemModel.
	self addItemComponent: itemComponent
]

{ #category : #initialization }
WsListComponent >> displayModel [

	model items withIndexDo: [ :item :index |
		self displayItemModel: item ]
]

{ #category : #actions }
WsListComponent >> handleAdd: itemModel at: itemIndex [

	self displayItemModel: itemModel 
]

{ #category : #initialization }
WsListComponent >> initModel [

	super initModel.
	model -@ #addPort => [ : itemModel : itemIndex | self handleAdd: itemModel at: itemIndex].
	self displayModel
]

{ #category : #initialization }
WsListComponent >> initView [

	super initView.
	listView := view querySelector: 'ul'
]

{ #category : #actions }
WsListComponent >> itemComponentClass [
	^ self class itemComponentClass
]

{ #category : #actions }
WsListComponent >> newItemComponent: itemModel [

	^ self itemComponentClass model: itemModel
]
