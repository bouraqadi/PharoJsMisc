Class {
	#name : #WsTextInputView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
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
