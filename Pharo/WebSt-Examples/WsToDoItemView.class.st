Class {
	#name : #WsToDoItemView,
	#superclass : #WsView,
	#category : #'WebSt-Examples-ToDoList'
}

{ #category : #rendering }
WsToDoItemView >> renderOuterHtmlOn: html [

	html div
		class: 'd-flex';
		with: [
			html checkbox class: 'form-check-input todo-checkbox'.
			
					html render: WsEditableTextComponent style: 'margin-left:10px;flex-grow:1;'  ]
]
