Class {
	#name : #WsTextComponentTest,
	#superclass : #WsComponentTest,
	#instVars : [
		'display'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsTextComponentTest class >> appClass [
	^WsTextApp 
]

{ #category : #tests }
WsTextComponentTest >> assertBehavior [

	| oldText newText |
	oldText := component text.
	self editWithText: 'Bilbo The Hobbit' save: false.
	self assert: display style display equals: ''.
	self assert: component text equals: oldText.
	self assert: display text equals: oldText.
	newText := 'The lord of the ring'.
	self editWithText: newText save: true.
	self assert: display style display equals: ''.
	self assert: component text equals: newText.
	self assert: display text equals: newText
]

{ #category : #tests }
WsTextComponentTest >> assertViewMatchesModel [

	self assert: display textContent equals: model text.
	#( 'snow is falling' 'snow man is smiling' 'sun is shining' ) do: [
		:each |
		model text: each.
		self assert: display textContent equals: model text ]
]

{ #category : #tests }
WsTextComponentTest >> changeModel [

	model text: 'The Incredibles'
]

{ #category : #tests }
WsTextComponentTest >> component: aComponent [

	super component: aComponent.
	display := root querySelector: WsTextComponent tagName 
]

{ #category : #tests }
WsTextComponentTest >> editWithText: newText save: shouldSave [

	| editor editorRoot textInput |
	display click.
	self waitUntil: [ display style display = 'none' ].
	editor := root querySelector: WsTextInputComponent tagName.
	editorRoot := editor shadowRoot.
	textInput := editorRoot querySelector: '.textInput'.
	self assert: textInput value equals: component text.
	textInput value: newText.
	shouldSave ifTrue: [
		^ (editorRoot querySelector: '.saveButton') click ].
	(editorRoot querySelector: '.cancelButton') click
]
