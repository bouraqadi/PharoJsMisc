Class {
	#name : #WsCounterComponentTest,
	#superclass : #WsComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCounterComponentTest class >> appClass [

	^ WsCounterApp 
]

{ #category : #tests }
WsCounterComponentTest >> assertBehavior [

	| display resetBtn incrementBtn decrementBtn |
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
WsCounterComponentTest >> assertBehavior: counter [

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
WsCounterComponentTest >> expectedTitle [

	^'Counter'
]
