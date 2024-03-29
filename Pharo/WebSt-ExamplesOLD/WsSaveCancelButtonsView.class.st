Class {
	#name : #WsSaveCancelButtonsView,
	#superclass : #WsViewOLD,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
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
