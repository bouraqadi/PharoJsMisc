Class {
	#name : #WsTextSpanComponent,
	#superclass : #WsMvcComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'display'
	],
	#category : #'WebSt-Examples-Text'
}

{ #category : #'instance creation' }
WsTextSpanComponent class >> modelClass [

	^WsTextModel 
]

{ #category : #'class initialization' }
WsTextSpanComponent class >> tagName [
	^'ws-text'
]

{ #category : #'instance creation' }
WsTextSpanComponent class >> text: aString [
	^self new
		text: aString;
		yourself
]

{ #category : #'accessing view' }
WsTextSpanComponent class >> title [

	^ 'Text'
]

{ #category : #rendering }
WsTextSpanComponent class >> viewClass [

	<pharoJsSkip>
	^ WsTextSpanView 
]

{ #category : #initialization }
WsTextSpanComponent >> handleText: aString [
	display textContent: aString
]

{ #category : #initialization }
WsTextSpanComponent >> initModel [

	super initModel .
	(model -@ #textPort)
		notificationSelector: #handleText:;
		=> self
]

{ #category : #initialization }
WsTextSpanComponent >> initView [

	super initView.
	display := view querySelector: 'span'
]

{ #category : #initialization }
WsTextSpanComponent >> linkModelAndView [

	super linkModelAndView.
	self updateDisplay
]

{ #category : #accessing }
WsTextSpanComponent >> text: aString [

	model text: aString
]

{ #category : #initialization }
WsTextSpanComponent >> updateDisplay [

	self handleText: model text
]
