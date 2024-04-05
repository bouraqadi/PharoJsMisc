Class {
	#name : #WsListComponentOLD,
	#superclass : #WsMvcComponentOLD,
	#instVars : [
		'listView'
	],
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #'instance creation' }
WsListComponentOLD class >> modelClass [
	^WsListModel 
]

{ #category : #rendering }
WsListComponentOLD class >> viewClass [

	<pharoJsSkip>
	^WsListViewOLD 
]

{ #category : #adding }
WsListComponentOLD >> addAllContents: itemContents [

	itemContents do: [ :each | self addContent: each ]
]

{ #category : #adding }
WsListComponentOLD >> addComponent: itemComponent [

	| item  |
	item := self createElement: #li.
	item className: 'list-group-item'.
	item appendChild: itemComponent.
	listView appendChild: item
]

{ #category : #adding }
WsListComponentOLD >> addContent: itemContent [

	| itemModel |
	itemModel := self itemComponentClass newModel.
	self initItemModel: itemModel with: itemContent.
	model add: itemModel
]

{ #category : #adding }
WsListComponentOLD >> handleAt: index add: itemModel [

	| itemComponent |
	itemComponent := self newItemComponent: itemModel.
	self addComponent: itemComponent 
]

{ #category : #adding }
WsListComponentOLD >> initItemModel: itemModel with: itemContent [
	self subclassResponsibility 
]

{ #category : #initialization }
WsListComponentOLD >> initModel [

	super initModel.
	(model -@ #addPort)
		=> self;
		notificationSelector: #handleAt:add:
]

{ #category : #initialization }
WsListComponentOLD >> initView [ 
	super initView .
	listView := view querySelector: 'ul'.
]

{ #category : #adding }
WsListComponentOLD >> itemComponentClass [
	self subclassResponsibility 
]

{ #category : #initialization }
WsListComponentOLD >> linkModelAndView [

	super linkModelAndView.
	model items withIndexDo: [ :item :index |
		self handleAt: index add: item ]
]

{ #category : #adding }
WsListComponentOLD >> newItemComponent: itemModel [

	^ self itemComponentClass model: itemModel
]
