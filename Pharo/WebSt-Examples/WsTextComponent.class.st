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

{ #category : #'class initialization' }
WsTextComponent class >> tagName [

	^'ws-text'
]

{ #category : #'accessing view' }
WsTextComponent class >> viewClass [

	<pharoJsSkip>
	^WsTextView
]

{ #category : #initialization }
WsTextComponent >> initModel [

	super initModel.
	model -@ #textPort => [ :newText | self updateDisplay: newText ].
	self updateDisplay: model text
]

{ #category : #initialization }
WsTextComponent >> initView [

	super initView.
	display := view querySelector: '.display'
]

{ #category : #actions }
WsTextComponent >> updateDisplay: newText [
	display textContent: newText 
]
