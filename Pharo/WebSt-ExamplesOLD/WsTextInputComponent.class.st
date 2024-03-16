Class {
	#name : #WsTextInputComponent,
	#superclass : #WsComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#instVars : [
		'input',
		'cancelBlock',
		'saveBlock'
	],
	#category : #'WebSt-ExamplesOLD-Text'
}

{ #category : #'instance creation' }
WsTextInputComponent class >> modelClass [

	^WsTextModel 
]

{ #category : #'class initialization' }
WsTextInputComponent class >> tagName [

	^'ws-text-input'
]

{ #category : #rendering }
WsTextInputComponent class >> viewClass [

	<pharoJsSkip>
	^WsTextInputView 
]

{ #category : #actions }
WsTextInputComponent >> cancel [

	self cancelBlock value
]

{ #category : #accessing }
WsTextInputComponent >> cancelBlock [

	^ cancelBlock
]

{ #category : #accessing }
WsTextInputComponent >> cancelBlock: anObject [

	cancelBlock := anObject
]

{ #category : #initialization }
WsTextInputComponent >> initView [

	| cancelButton saveButton |
	super initView .
	input := view querySelector: '.textInput'.
	cancelButton := view querySelector: '.cancelButton'.
	self onClickElement: cancelButton do: [ self cancel ].
	saveButton := view querySelector: '.saveButton'.
	self onClickElement: saveButton do: [ self save ]
]

{ #category : #actions }
WsTextInputComponent >> save [

	self saveBlock value: input value
]

{ #category : #accessing }
WsTextInputComponent >> saveBlock [

	^ saveBlock
]

{ #category : #accessing }
WsTextInputComponent >> saveBlock: anObject [

	saveBlock := anObject
]

{ #category : #accessing }
WsTextInputComponent >> text: aString [

	input value: aString
]
