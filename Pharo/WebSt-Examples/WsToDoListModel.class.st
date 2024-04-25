Class {
	#name : #WsToDoListModel,
	#superclass : #WsListModel,
	#instVars : [
		'title',
		'titlePort'
	],
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #initialization }
WsToDoListModel >> initialize [

	super initialize.
	title := 'ToDo List'.
	titlePort := HyCollectionPort notificationSelector: #value:
]

{ #category : #accessing }
WsToDoListModel >> title [
	^title
]

{ #category : #accessing }
WsToDoListModel >> title: newTitle [

	title := newTitle.
	titlePort notifyWith: newTitle 
]
