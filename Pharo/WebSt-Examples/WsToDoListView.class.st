Class {
	#name : #WsToDoListView,
	#superclass : #WsListView,
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsToDoListView >> renderContentOn: html [

	super renderContentOn: html.
	html button
		class: 'btn btn-primary add-item-todo';
		type: 'button';
		value: 'Add Entry'
]
