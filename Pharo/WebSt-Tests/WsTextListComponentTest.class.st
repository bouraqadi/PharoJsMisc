Class {
	#name : #WsTextListComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsTextListComponentTest class >> appClass [

	^ WsTextListApp 
]

{ #category : #tests }
WsTextListComponentTest >> assertBehavior [

	| model itemsCount |
	model := component listModel.
	itemsCount := self itemElements size.
	#( some more content to add ) do: [ :each |
		model add: each.
		itemsCount := itemsCount + 1.
		self assert: self itemElements size equals: itemsCount.
		self assert: self itemElements last children first  shadowRoot textContent equals: each ]
]

{ #category : #tests }
WsTextListComponentTest >> itemElements [

	^ root querySelectorAll: #li
]
