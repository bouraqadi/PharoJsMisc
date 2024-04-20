Class {
	#name : #WsTextInputView,
	#superclass : #WsView,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsTextInputView >> renderOuterHtmlOn: html [

	html div
		class: 'input-group';
		with: [
			html textInput
				class: 'form-control textInput';
				placeholder: 'Your text here'.
			html render: WsSaveCancelButtonsView ]
]
