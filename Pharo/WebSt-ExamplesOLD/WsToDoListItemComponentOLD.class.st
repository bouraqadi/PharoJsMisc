Class {
	#name : #WsToDoListItemComponentOLD,
	#superclass : #WsEditableTextComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'checkbox'
	],
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #'instance creation' }
WsToDoListItemComponentOLD class >> modelClass [

	^ WsToDoItemModel 
]

{ #category : #'class initialization' }
WsToDoListItemComponentOLD class >> tagName [

	^ 'ws-todolist-item'
]

{ #category : #rendering }
WsToDoListItemComponentOLD class >> viewClass [

	<pharoJsSkip>
	^ WsToDoItemView
]

{ #category : #initialization }
WsToDoListItemComponentOLD >> displayChecked: aBoolean [

	checkbox checked: aBoolean
]

{ #category : #initialization }
WsToDoListItemComponentOLD >> initModel [

	super initModel.
	(model -@ #isCheckedPort)
		notificationSelector: #displayChecked:;
		=> self
]

{ #category : #initialization }
WsToDoListItemComponentOLD >> initView [

	super initView.
	checkbox := view querySelector: '.todo-checkbox'
]

{ #category : #initialization }
WsToDoListItemComponentOLD >> updateDisplay [

	super updateDisplay.
	self displayChecked: model isChecked
]
