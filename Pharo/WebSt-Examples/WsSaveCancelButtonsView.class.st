Class {
	#name : #WsSaveCancelButtonsView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#instVars : [
		'isDisabled'
	],
	#category : #'WebSt-Examples-Text'
}

{ #category : #rendering }
WsSaveCancelButtonsView >> renderContentOn: html [

	html button
		class: 'btn btn-success saveButton';
		type: 'button';
		value: 'Save';
		disabled: self isDisabled.
	html button
		class: 'btn btn-danger cancelButton';
		type: 'button';
		value: 'Cancel';
		disabled: self isDisabled
]
