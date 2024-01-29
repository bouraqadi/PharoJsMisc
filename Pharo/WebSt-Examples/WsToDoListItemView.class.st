Class {
	#name : #WsToDoListItemView,
	#superclass : #WsEditableTextView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsToDoListItemView >> renderContentOn: html [

	html div
		class: 'form-check';
	with: [
					html checkbox class: 'form-check-input todo-checkbox'.
					super renderContentOn: html ]
]
