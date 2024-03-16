Class {
	#name : #WsSaveCancelButtonsView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #rendering }
WsSaveCancelButtonsView >> renderContentOn: html [

	html button
		class: 'btn btn-success saveButton';
		type: 'button';
		value: 'Save'.
	html button
		class: 'btn btn-danger cancelButton';
		type: 'button';
		value: 'Cancel'
]
