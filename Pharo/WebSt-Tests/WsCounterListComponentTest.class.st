Class {
	#name : #WsCounterListComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsCounterListComponentTest class >> appClass [

	^ WsCounterListApp
]

{ #category : #tests }
WsCounterListComponentTest >> assertBehavior [

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
WsCounterListComponentTest >> itemElements [

	^ root querySelectorAll: #li
]
