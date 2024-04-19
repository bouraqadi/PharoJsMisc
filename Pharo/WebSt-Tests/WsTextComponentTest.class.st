Class {
	#name : #WsTextComponentTest,
	#superclass : #WsMvcComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #accessing }
WsTextComponentTest class >> componentClass [

	^ WsTextComponent 
]

{ #category : #asserting }
WsTextComponentTest >> assertViewModelLink [

	| newText |
	self assert: component display textContent equals: model text.
	newText := 'new text'.
	model text: newText.
	self assert: component display textContent equals: newText
]

{ #category : #asserting }
WsTextComponentTest >> changeModelValues [

	model text: 'another random text to test model change'
]
