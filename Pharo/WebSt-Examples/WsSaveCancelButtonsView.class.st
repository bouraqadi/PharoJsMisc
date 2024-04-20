Class {
	#name : #WsSaveCancelButtonsView,
	#superclass : #WsView,
	#traits : 'WsTBootstrap5View',
	#classTraits : 'WsTBootstrap5View classTrait',
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsSaveCancelButtonsView >> renderOuterHtmlOn: html [

	html button
		class: 'btn btn-success saveButton';
		type: 'button';
		value: 'Save'.
	html button
		class: 'btn btn-danger cancelButton';
		type: 'button';
		value: 'Cancel'
]
