Class {
	#name : #WsWebCounterComponentTest,
	#superclass : #WsWebComponentTest,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #'suite parameters' }
WsWebCounterComponentTest class >> appClass [

	^ WsAppForTest 
]

{ #category : #tests }
WsWebCounterComponentTest >> allCounterComponents [

	^ document querySelectorAll: 'ws-counter'
]

{ #category : #tests }
WsWebCounterComponentTest >> assertBehaviorOfCounter: counter [

	| display resetBtn root incrementBtn decrementBtn |
	root := counter shadowRoot.
	display := root querySelector: '.display'.
	incrementBtn := root querySelector: '.increment'.
	decrementBtn := root querySelector: '.decrement'.
	resetBtn := root querySelector: '.reset'.
	self assert: display textContent equals: 0 asString.
	3 timesRepeat: [ incrementBtn click ].
	self assert: display textContent equals: 3 asString.
	5 timesRepeat: [ decrementBtn click ].
	self assert: display textContent equals: -2 asString.
	resetBtn click.
	self assert: display textContent equals: 0 asString
]

{ #category : #tests }
WsWebCounterComponentTest >> testAddCounterComponentDynamically [

	| newCounter |
	newCounter := document createElement: WsCounterComponent tagName.
	document body appendChild: newCounter.
	self assertBehaviorOfCounter: newCounter
]

{ #category : #tests }
WsWebCounterComponentTest >> testAppIncludesCounterComponentTag [

	| elements |
	elements := self allCounterComponents.
	self assert: elements size equals: 1.
	self assert: elements first parentNode identicalTo: document body
]

{ #category : #tests }
WsWebCounterComponentTest >> testCounterComponentBehavior [

	| counter |
	counter := self allCounterComponents first.
	self assertBehaviorOfCounter: counter
]
