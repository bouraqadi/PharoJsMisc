Class {
	#name : #WsToDoListItemView,
	#superclass : #WsEditableTextViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #rendering }
WsToDoListItemView >> renderContentOn: html [

	html div
		class: 'form-check';
	with: [
					html checkbox class: 'form-check-input todo-checkbox'.
					super renderContentOn: html ]
]
