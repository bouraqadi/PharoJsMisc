Class {
	#name : #WcCounterDemoTest,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#instVars : [
		'shadowDomRoot',
		'display'
	],
	#category : #WebComponents
}

{ #category : #'suite parameters' }
WcCounterDemoTest class >> appClass [

	^ WcCounterDemo
]

{ #category : #tests }
WcCounterDemoTest >> setUp [

	super setUp.
	shadowDomRoot := (document querySelector: 'pj-counter') shadowRoot.
	display := shadowDomRoot querySelector: '.display'.
	
]

{ #category : #tests }
WcCounterDemoTest >> testCounterElementCreated [
	| counterElement |
	counterElement := document querySelector: 'pj-counter'.
	self deny: counterElement isNil.
]

{ #category : #tests }
WcCounterDemoTest >> testDecrement [

	| button |
	button := shadowDomRoot querySelector: '.decrement'.
	self deny: button isNil.
	3 timesRepeat: [ button click ].
	self assert: display textContent equals: '-3'
]

{ #category : #tests }
WcCounterDemoTest >> testIncrement [

	| button |
	button := shadowDomRoot querySelector: '.increment'.
	self deny: button isNil.
	3 timesRepeat: [ button click ].
	self assert: display textContent equals: '3'
]

{ #category : #tests }
WcCounterDemoTest >> testReset [

	| button |
	button := shadowDomRoot querySelector: '.reset'.
	self deny: button isNil.
	display textContent: '123'.
	button click.
	self assert: display textContent equals: '0'
]
