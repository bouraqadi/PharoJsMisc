Class {
	#name : #WsEditableTextComponent,
	#superclass : #WsMvcComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'display',
		'editor',
		'displayContainer'
	],
	#category : #'WebSt-Examples-Text'
}

{ #category : #'instance creation' }
WsEditableTextComponent class >> modelClass [

	^WsTextModel 
]

{ #category : #'class initialization' }
WsEditableTextComponent class >> tagName [
	^'ws-text'
]

{ #category : #'instance creation' }
WsEditableTextComponent class >> text: aString [
	^self new
		text: aString;
		yourself
]

{ #category : #'accessing view' }
WsEditableTextComponent class >> title [

	^ 'Text'
]

{ #category : #rendering }
WsEditableTextComponent class >> viewClass [

	<pharoJsSkip>
	^ WsEditableTextView 
]

{ #category : #actions }
WsEditableTextComponent >> cancelEdit [

	self closeEditor
]

{ #category : #actions }
WsEditableTextComponent >> closeEditor [

	self hide: editor.
	self show: displayContainer 
]

{ #category : #initialization }
WsEditableTextComponent >> displayText: aString [
	display textContent: aString
]

{ #category : #actions }
WsEditableTextComponent >> edit [

	editor text: model text.
	self hide: displayContainer.
	self show: editor
]

{ #category : #initialization }
WsEditableTextComponent >> initModel [

	super initModel .
	(model -@ #textPort)
		notificationSelector: #displayText:;
		=> self
]

{ #category : #initialization }
WsEditableTextComponent >> initView [

	super initView.
	display := view querySelector: 'span'.
	displayContainer := display parentElement.
	self onClickElement: displayContainer do: [ self edit ].
	editor := view querySelector: WsTextInputComponent tagName.
	editor
		saveBlock: [ :newText | self saveEdit: newText ];
		cancelBlock: [ self cancelEdit ].
	self closeEditor
]

{ #category : #initialization }
WsEditableTextComponent >> linkModelAndView [

	super linkModelAndView.
	self updateDisplay
]

{ #category : #actions }
WsEditableTextComponent >> saveEdit: newText [

	self text: newText.
	self closeEditor
]

{ #category : #accessing }
WsEditableTextComponent >> text: aString [

	model text: aString
]

{ #category : #initialization }
WsEditableTextComponent >> updateDisplay [

	self displayText: model text
]
