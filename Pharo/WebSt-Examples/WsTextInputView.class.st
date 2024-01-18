Class {
	#name : #WsTextInputView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsTextInputView >> renderContentOn: html [

	html div
		class: 'input-group';
		with: [
			html textInput
				class: 'form-control textInput';
				placeholder: 'Your text here'.
			html button
				class: 'btn btn-success saveButton';
				type: 'button';
				value: 'Save'.
			html button
				class: 'btn btn-danger cancelButton';
				type: 'button';
				value: 'Cancel' ]
]
