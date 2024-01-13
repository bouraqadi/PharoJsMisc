Class {
	#name : #WsToDoListItemView,
	#superclass : #WsTextView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsToDoListItemView >> renderContentOn: html [

	html div
		class: 'form-check';
		with: [
			html label
				class: 'form-check-label';
				with: [
					html checkbox class: 'form-check-input todo-checkbox'.
					super renderContentOn: html ] ]
]