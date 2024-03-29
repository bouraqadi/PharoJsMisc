Class {
	#name : #WsCounterComponentTestOLD,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'display',
		'incrementBtn',
		'decrementBtn',
		'resetBtn'
	],
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #'suite parameters' }
WsCounterComponentTestOLD class >> appClass [

	^ WsCounterApp 
]

{ #category : #tests }
WsCounterComponentTestOLD >> assertBehavior [

	self assertCount: 0.
	3 timesRepeat: [ incrementBtn click ].
	self assertCount: 3 .
	5 timesRepeat: [ decrementBtn click ].
	self assertCount: -2 .
	resetBtn click.
	self assertCount: 0 
]

{ #category : #tests }
WsCounterComponentTestOLD >> assertCount: expectedCount [

	self assert: display textContent equals: expectedCount asString.
	self assert: model count equals: expectedCount
]

{ #category : #tests }
WsCounterComponentTestOLD >> assertViewModelLink [

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
WsCounterComponentTestOLD >> changeModel [

	model count: 42
]

{ #category : #tests }
WsCounterComponentTestOLD >> component: aComponent [

	super component: aComponent.
	display := root querySelector: '.display'.
	incrementBtn := root querySelector: '.increment'.
	decrementBtn := root querySelector: '.decrement'.
	resetBtn := root querySelector: '.reset'.

]
