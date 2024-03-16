Class {
	#name : #WsToDoListView,
	#superclass : #WsListView,
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #rendering }
WsToDoListView >> renderContentOn: html [

	super renderContentOn: html.
	html button
		class: 'btn btn-primary addTodoItem';
		type: 'button';
		value: 'Add Entry'
]
