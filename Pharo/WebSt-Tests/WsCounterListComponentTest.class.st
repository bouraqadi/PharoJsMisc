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

	| itemsCount counterView display incrementBtn expectedCount |
	itemsCount := self itemElements size.
	1 to: 5 do: [ :each |
		component add: each.
		itemsCount := itemsCount + 1.
		self assert: self itemElements size equals: itemsCount.
		counterView := self itemElements last children first shadowRoot.
		display := counterView querySelector: '.display'.
		incrementBtn := counterView querySelector: '.increment'.
		expectedCount := each.
		self assert: display textContent equals: expectedCount asString.
		3 timesRepeat: [
			incrementBtn click.
			expectedCount := expectedCount + 1.
			self assert: display textContent equals: expectedCount asString ] ]
]

{ #category : #tests }
WsCounterListComponentTest >> itemElements [

	^ root querySelectorAll: #li
]
