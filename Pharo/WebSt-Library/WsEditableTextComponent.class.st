Class {
	#name : #WsEditableTextComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#instVars : [
		'textReader',
		'textEditor'
	],
	#category : #'WebSt-Library-Text'
}

{ #category : #'class initialization' }
WsEditableTextComponent class >> tagName [

	^ 'ws-editable-text'
]

{ #category : #accessing }
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
	self hide: textEditor .
	self show: textReader
]

{ #category : #initialization }
WsEditableTextComponent >> initView [

	super initView.
	textReader := view querySelector: WsTextComponent tagName.
	self onClickElement: textReader do: [ self openEditor ].
	textEditor := view querySelector: WsTextInputComponent tagName.
	textEditor
		model: textReader model;
		cancelBlock: [ self cancelEdit ];
		saveBlock: [ :newText | self saveEdit: newText ].
	self closeEditor
]

{ #category : #actions }
WsEditableTextComponent >> openEditor [

	self show: textEditor.
	self hide: textReader
]

{ #category : #actions }
WsEditableTextComponent >> saveEdit: newText [

	textReader text: newText.
	self closeEditor
]

{ #category : #accessing }
WsEditableTextComponent >> text [
	^textReader text
]

{ #category : #accessing }
WsEditableTextComponent >> text: newText [

	textReader text: newText
]
