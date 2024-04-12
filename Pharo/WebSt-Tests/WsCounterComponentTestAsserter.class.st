Class {
	#name : #WsCounterComponentTestAsserter,
	#superclass : #TestAsserter,
	#instVars : [
		'display',
		'counter',
		'incrementBtn',
		'decrementBtn',
		'resetBtn'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #asserting }
WsCounterComponentTestAsserter class >> assert: aCounterComponent [
	(self component: aCounterComponent) assert 
]

{ #category : #'instance creation' }
WsCounterComponentTestAsserter class >> component: aCounterComponent [
	^self new component: aCounterComponent; yourself
]

{ #category : #asserting }
WsCounterComponentTestAsserter >> assert [
	self assertViewModelLink 
]

{ #category : #asserting }
WsCounterComponentTestAsserter >> assertCount: expectedCount [

	self assert: display textContent equals: expectedCount asString.
	self assert: counter count equals: expectedCount
]

{ #category : #asserting }
WsCounterComponentTestAsserter >> assertViewModelLink [

	| expectedCount |
	expectedCount := counter count.
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

{ #category : #tests }
WsCounterComponentTestAsserter >> component: aCounterComponent [
	| domRoot |
	counter := aCounterComponent model.
	domRoot := aCounterComponent view.
	display := domRoot querySelector: '.display'.
	incrementBtn := domRoot querySelector: '.increment'.
	decrementBtn := domRoot querySelector: '.decrement'.
	resetBtn := domRoot querySelector: '.reset'
]

{ #category : #accessing }
WsCounterComponentTestAsserter >> resources [

	^ #()
]

{ #category : #running }
WsCounterComponentTestAsserter >> setUp [

	^ self
]

{ #category : #running }
WsCounterComponentTestAsserter >> tearDown [

	^ self
]
