Class {
	#name : #WsListComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsListComponentTest class >> appClass [

	^ WsListExampleApp 
]

{ #category : #tests }
WsListComponentTest >> assertBehavior [

	| model itemsCount |
	model := component listModel.
	itemsCount := self itemElements size.
	#( some more content to add ) do: [ :each |
		model add: each.
		itemsCount := itemsCount + 1.
		self assert: self itemElements size equals: itemsCount.
		self assert: self itemElements last innerHTML equals: each ]
]

{ #category : #tests }
WsListComponentTest >> expectedTitle [

	^ 'Robots'
]

{ #category : #tests }
WsListComponentTest >> itemElements [

	^ root querySelectorAll: #li
]
