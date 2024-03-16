Class {
	#name : #WsToDoListItemModel,
	#superclass : #WsTextModel,
	#instVars : [
		'isChecked',
		'isCheckedPort'
	],
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #initialization }
WsToDoListItemModel >> initialize [ 
	super initialize.
	isChecked := false.
	isCheckedPort := HyCollectionPort new
]

{ #category : #accessing }
WsToDoListItemModel >> isChecked [

	^ isChecked
]

{ #category : #accessing }
WsToDoListItemModel >> isChecked: aBoolean [

	isChecked := aBoolean.
	isCheckedPort notifyWith: isChecked 
]
