Class {
	#name : #WsToDoListItemComponent,
	#superclass : #WsEditableTextComponent,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'checkbox'
	],
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #'instance creation' }
WsToDoListItemComponent class >> modelClass [

	^ WsToDoListItemModel 
]

{ #category : #'class initialization' }
WsToDoListItemComponent class >> tagName [

	^ 'ws-todolist-item'
]

{ #category : #rendering }
WsToDoListItemComponent class >> viewClass [

	<pharoJsSkip>
	^ WsToDoListItemView
]

{ #category : #initialization }
WsToDoListItemComponent >> displayChecked: aBoolean [

	checkbox checked: aBoolean
]

{ #category : #initialization }
WsToDoListItemComponent >> initModel [

	super initModel.
	(model -@ #isCheckedPort)
		notificationSelector: #displayChecked:;
		=> self
]

{ #category : #initialization }
WsToDoListItemComponent >> initView [

	super initView.
	checkbox := view querySelector: '.todo-checkbox'
]

{ #category : #initialization }
WsToDoListItemComponent >> updateDisplay [

	super updateDisplay.
	self displayChecked: model isChecked
]
