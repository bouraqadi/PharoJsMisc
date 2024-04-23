Class {
	#name : #WsToDoItemView,
	#superclass : #WsEditableTextView,
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #rendering }
WsToDoItemView >> renderOuterHtmlOn: html [

	html div
		class: 'form-check';
		with: [
			html checkbox class: 'form-check-input todo-checkbox'.
			super renderOuterHtmlOn: html ]
]
