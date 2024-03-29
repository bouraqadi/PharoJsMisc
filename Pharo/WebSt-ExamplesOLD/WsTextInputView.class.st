Class {
	#name : #WsTextInputView,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #rendering }
WsTextInputView >> renderContentOn: html [

	html div
		class: 'input-group';
		with: [
			html textInput
				class: 'form-control textInput';
				placeholder: 'Your text here'.
			html
				render: WsSaveCancelButtonsView ]
]
