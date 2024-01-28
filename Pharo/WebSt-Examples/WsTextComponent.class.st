Class {
	#name : #WsTextComponent,
	#superclass : #WsMvcComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'display'
	],
	#category : #'WebSt-Examples-Text'
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

{ #category : #rendering }
WsTextComponent class >> viewClass [

	<pharoJsSkip>
	^WsTextView
]

{ #category : #initialization }
WsTextComponent >> displayText: aString [
	display textContent: aString
]

{ #category : #initialization }
WsTextComponent >> initModel [

	super initModel .
	(model -@ #textPort)
		notificationSelector: #displayText:;
		=> self
]

{ #category : #initialization }
WsTextComponent >> initView [

	super initView.
	display := view querySelector: '.textDisplay'.
]

{ #category : #initialization }
WsTextComponent >> linkModelAndView [

	super linkModelAndView.
	self updateDisplay
]

{ #category : #accessing }
WsTextComponent >> text [
	^model text
]

{ #category : #accessing }
WsTextComponent >> text: aString [

	model text: aString
]

{ #category : #initialization }
WsTextComponent >> updateDisplay [

	self displayText: model text
]
