Class {
	#name : #WsCounterComponent,
	#superclass : #WsWebComponent,
	#traits : 'WsTConcreteWebComponent',
	#classTraits : 'WsTConcreteWebComponent classTrait',
	#instVars : [
		'display',
		'counter'
	],
	#category : #'WebSt-Library'
}

{ #category : #'class initialization' }
WsCounterComponent class >> tagName [
	^'ws-counter'
]

{ #category : #'class initialization' }
WsCounterComponent class >> viewFactoryClass [
<pharoJsSkip>
	^ WsCounterViewFactory
]

{ #category : #actions }
WsCounterComponent >> decrement [

	counter decrement.
	self updateDisplay
]

{ #category : #actions }
WsCounterComponent >> increment [
	counter increment.
	self updateDisplay 
]

{ #category : #initialization }
WsCounterComponent >> initModel [
	counter := WsCounterModel new
]

{ #category : #initialization }
WsCounterComponent >> initView [
	| incrementButton decrementButton resetButton |
	super initView.
	display := view querySelector: '.display'.
	incrementButton := view querySelector: '.increment'.
	self onClickElement: incrementButton do: [ self increment ].
	decrementButton := view querySelector: '.decrement'.
	self onClickElement: decrementButton do: [ self decrement ].
	resetButton := view querySelector: '.reset'.
	self onClickElement: resetButton do: [ self reset ].
	self updateDisplay
]

{ #category : #actions }
WsCounterComponent >> reset [

	counter reset.
	self updateDisplay
]

{ #category : #actions }
WsCounterComponent >> updateDisplay [ 
display textContent: counter count
]
