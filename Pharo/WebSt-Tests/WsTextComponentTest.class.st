Class {
	#name : #WsTextComponentTest,
	#superclass : #WsMvcComponentTest,
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
	oldText := model text.
	self editWithText: 'Bilbo The Hobbit' save: false.
	self assert: display style display equals: ''.
	self assert: model text equals: oldText.
	self assert: display textContent equals: oldText.
	newText := 'The lord of the ring'.
	self editWithText: newText save: true.
	self assert: display style display equals: ''.
	self assert: model text equals: newText.
	self assert: display textContent equals: newText.
	
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
	super component: aComponent .
		display := root querySelector: 'span'.

]

{ #category : #tests }
WsTextComponentTest >> editWithText: newText save: shouldSave [

	| editor editorRoot textInput |
	component click.
	self assert: display style display equals: 'none'.
	editor := document querySelector: WsTextInputComponent tagName.
	editorRoot := editor shadowRoot.
	textInput := editorRoot querySelector: '.textInput'.
	self assert: textInput textContent equals: model text.
	textInput textContent: newText.
	shouldSave ifTrue: [ ^(editorRoot querySelector: '.savelButton') click. ].
	(editorRoot querySelector: '.cancelButton') click.

]
