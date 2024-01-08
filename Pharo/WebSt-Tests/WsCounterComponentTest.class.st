Class {
	#name : #WsCounterComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'display',
		'incrementBtn',
		'decrementBtn',
		'resetBtn'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsCounterComponentTest class >> appClass [

	^ WsCounterApp 
]

{ #category : #tests }
WsCounterComponentTest >> assertBehavior [

	self assertCount: 0.
	3 timesRepeat: [ incrementBtn click ].
	self assertCount: 3 .
	5 timesRepeat: [ decrementBtn click ].
	self assertCount: -2 .
	resetBtn click.
	self assertCount: 0 
]

{ #category : #tests }
WsCounterComponentTest >> assertCount: expectedCount [

	self assert: display textContent equals: expectedCount asString.
	self assert: model count equals: expectedCount
]

{ #category : #tests }
WsCounterComponentTest >> assertViewMatchesModel [

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
	self assertCount: 0.

]

{ #category : #tests }
WsCounterComponentTest >> component: aComponent [

	super component: aComponent.
	display := root querySelector: '.display'.
	incrementBtn := root querySelector: '.increment'.
	decrementBtn := root querySelector: '.decrement'.
	resetBtn := root querySelector: '.reset'.

]
