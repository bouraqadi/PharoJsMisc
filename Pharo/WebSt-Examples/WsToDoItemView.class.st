Class {
	#name : #WsToDoItemView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #rendering }
WsToDoItemView >> renderOuterHtmlOn: html [

	html div
		class: 'form-check';
		with: [
			html checkbox class: 'form-check-input todo-checkbox'.
			html render: WsEditableTextComponent ]
]
