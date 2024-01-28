Class {
	#name : #WsEditableTextComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'display',
		'editor'
	],
	#category : #'WebSt-Examples-Text'
}

{ #category : #'class initialization' }
WsEditableTextComponent class >> tagName [

	^ 'ws-text-editable'
]

{ #category : #'instance creation' }
WsEditableTextComponent class >> text: aString [

	^ self new
		  text: aString;
		  yourself
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
	self show: display.

]

{ #category : #actions }
WsEditableTextComponent >> edit [

	editor text: display text.
	self hide: display.
	self show: editor
]

{ #category : #initialization }
WsEditableTextComponent >> initView [

	super initView.
	display := view querySelector: WsTextComponent tagName.
	self onClickElement: display do: [ self edit ].
	editor := view querySelector: WsTextInputComponent tagName.
	editor
		saveBlock: [ :newText | self saveEdit: newText ];
		cancelBlock: [ self cancelEdit ].
	self closeEditor
]

{ #category : #actions }
WsEditableTextComponent >> saveEdit: newText [

	display text: newText.
	self closeEditor
]

{ #category : #accessing }
WsEditableTextComponent >> text [

	^display text
]

{ #category : #accessing }
WsEditableTextComponent >> text: aString [
	display text: aString.
	editor text: aString

]
