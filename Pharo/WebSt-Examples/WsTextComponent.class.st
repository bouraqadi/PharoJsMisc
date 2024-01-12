Class {
	#name : #WsTextComponent,
	#superclass : #WsMvcComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'display'
	],
	#category : #'WebSt-Examples-List'
}

{ #category : #'instance creation' }
WsTextComponent class >> modelClass [

	^WsTextModel 
]

{ #category : #'class initialization' }
WsTextComponent class >> tagName [
	^'ws-text'
]

{ #category : #'instance creation' }
WsTextComponent class >> text: aString [
	^self new
		text: aString;
		yourself
]

{ #category : #'accessing view' }
WsTextComponent class >> title [

	^ 'Text'
]

{ #category : #rendering }
WsTextComponent class >> viewClass [

	<pharoJsSkip>
	^ WsTextView 
]

{ #category : #initialization }
WsTextComponent >> handleText: aString [
	
]

{ #category : #initialization }
WsTextComponent >> initModel [

	super initModel .
	(model -@ #textPort)
		notificationSelector: #handleText:;
		=> self
]

{ #category : #initialization }
WsTextComponent >> initView [

	super initView.
	display := view querySelector: 'span'
]

{ #category : #initialization }
WsTextComponent >> linkModelAndView [

	super linkModelAndView.
	self updateDisplay
]

{ #category : #accessing }
WsTextComponent >> text: aString [

	model text: aString
]

{ #category : #initialization }
WsTextComponent >> updateDisplay [
	display textContent: model text
]
