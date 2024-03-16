Class {
	#name : #WsCounterComponent,
	#superclass : #WsMvcComponent,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'display'
	],
	#category : #'WebSt-ExamplesOLD-Counter'
}

{ #category : #'instance creation' }
WsCounterComponent class >> count: anInteger [
	^self new
		count: anInteger;
		yourself
]

{ #category : #initialization }
WsCounterComponent class >> modelClass [ 
	^WsCounterModel 
]

{ #category : #'class initialization' }
WsCounterComponent class >> tagName [
	^'ws-counter'
]

{ #category : #'class initialization' }
WsCounterComponent class >> viewClass [
<pharoJsSkip>
	^ WsCounterView
]

{ #category : #initialization }
WsCounterComponent >> count: anInteger [

	model count: anInteger
]

{ #category : #actions }
WsCounterComponent >> displayCount: newCount [

	display textContent: newCount
]

{ #category : #initialization }
WsCounterComponent >> initModel [

	super initModel.
	(model -@ #countPort)
		=> self;
		notificationSelector: #displayCount:
]

{ #category : #initialization }
WsCounterComponent >> initView [

	super initView.
	display := view querySelector: '.display'.

]

{ #category : #initialization }
WsCounterComponent >> linkModelAndView [

	| incrementButton decrementButton resetButton |
	super linkModelAndView.
	incrementButton := view querySelector: '.increment'.
	self onClickElement: incrementButton do: [ model increment ].
	decrementButton := view querySelector: '.decrement'.
	self onClickElement: decrementButton do: [ model decrement ].
	resetButton := view querySelector: '.reset'.
	self onClickElement: resetButton do: [ model reset ].
	self updateDisplay
]

{ #category : #actions }
WsCounterComponent >> updateDisplay [

	self displayCount: model count
]
