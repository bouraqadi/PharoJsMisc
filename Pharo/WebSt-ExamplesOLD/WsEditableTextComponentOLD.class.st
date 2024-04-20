Class {
	#name : #WsEditableTextComponentOLD,
	#superclass : #WsMvcComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'display',
		'editor',
		'displayContainer'
	],
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #'instance creation' }
WsEditableTextComponentOLD class >> modelClass [

	^WsTextModel 
]

{ #category : #'instance creation' }
WsEditableTextComponentOLD class >> text: aString [
	^self new
		text: aString;
		yourself
]

{ #category : #'accessing view' }
WsEditableTextComponentOLD class >> title [

	^ 'Text'
]

{ #category : #rendering }
WsEditableTextComponentOLD class >> viewClass [

	<pharoJsSkip>
	^ WsEditableTextViewOLD 
]

{ #category : #actions }
WsEditableTextComponentOLD >> cancelEdit [

	self closeEditor
]

{ #category : #actions }
WsEditableTextComponentOLD >> closeEditor [

	self hide: editor.
	self show: displayContainer 
]

{ #category : #initialization }
WsEditableTextComponentOLD >> displayText: aString [
	display textContent: aString
]

{ #category : #actions }
WsEditableTextComponentOLD >> edit [

	editor text: model text.
	self hide: displayContainer.
	self show: editor
]

{ #category : #initialization }
WsEditableTextComponentOLD >> initModel [

	super initModel .
	(model -@ #textPort)
		notificationSelector: #displayText:;
		=> self
]

{ #category : #initialization }
WsEditableTextComponentOLD >> initView [

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
WsEditableTextComponentOLD >> linkModelAndView [

	super linkModelAndView.
	self updateDisplay
]

{ #category : #actions }
WsEditableTextComponentOLD >> saveEdit: newText [

	self text: newText.
	self closeEditor
]

{ #category : #accessing }
WsEditableTextComponentOLD >> text: aString [

	model text: aString
]

{ #category : #initialization }
WsEditableTextComponentOLD >> updateDisplay [

	self displayText: model text
]
