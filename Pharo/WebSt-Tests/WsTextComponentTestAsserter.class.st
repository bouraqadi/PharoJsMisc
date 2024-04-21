Class {
	#name : #WsTextComponentTestAsserter,
	#superclass : #WsComponentTestAsserter,
	#category : #'WebSt-Tests-Components'
}

{ #category : #asserting }
WsTextComponentTestAsserter >> assertViewModelLink [

	| newText |
	self assert: component display textContent equals: model text.
	newText := 'new text'.
	model text: newText.
	self assert: component display textContent equals: newText
]
