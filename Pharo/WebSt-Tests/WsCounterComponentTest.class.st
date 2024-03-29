Class {
	#name : #WsCounterComponentTest,
	#superclass : #WsMvcComponentTest,
	#instVars : [
		'display',
		'incrementBtn',
		'decrementBtn',
		'resetBtn'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCounterComponentTest class >> appClass [

	^ WsCounterApp
]

{ #category : #asserting }
WsCounterComponentTest >> assertCount: expectedCount [

	self assert: display textContent equals: expectedCount asString.
	self assert: model count equals: expectedCount
]

{ #category : #asserting }
WsCounterComponentTest >> assertViewModelLink [

	| expectedCount |
	expectedCount := model count.
	self assertCount: expectedCount.
	3 timesRepeat: [ incrementBtn click ].
	expectedCount := expectedCount + 3.
	self assertCount: expectedCount.
	5 timesRepeat: [ decrementBtn click ].
	expectedCount := expectedCount - 5.
	self assertCount: expectedCount.
	resetBtn click.
	self assertCount: 0
]

{ #category : #asserting }
WsCounterComponentTest >> changeModelValues [

	model count: 42
]

{ #category : #accessing }
WsCounterComponentTest >> component: aComponent [

	super component: aComponent.
	display := shadowRoot querySelector: '.display'.
	incrementBtn := shadowRoot querySelector: '.increment'.
	decrementBtn := shadowRoot querySelector: '.decrement'.
	resetBtn := shadowRoot querySelector: '.reset'
]
