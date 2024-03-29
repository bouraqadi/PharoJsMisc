Class {
	#name : #WsMvcComponent,
	#superclass : #WsComponent,
	#instVars : [
		'model'
	],
	#category : #'WebSt-Base-Components'
}

{ #category : #'instance creation' }
WsMvcComponent class >> model: aModel [

	^ self basicNew
		  model: aModel;
		  yourself
]

{ #category : #'instance creation' }
WsMvcComponent class >> modelClass [

	self subclassResponsibility
]

{ #category : #'instance creation' }
WsMvcComponent class >> newModel [

	^self modelClass new
]

{ #category : #initialization }
WsMvcComponent >> initModel [

^self
]

{ #category : #initialization }
WsMvcComponent >> initialize [

	super initialize.
	self model: self newModel.

]

{ #category : #accessing }
WsMvcComponent >> model [

	^ model
]

{ #category : #initialization }
WsMvcComponent >> model: aModel [

	self flag: #ToClean.
	"	(model notNil or: [ view isNil ]) ifTrue: [ self resetView ]."
	[ view isNil ] ifTrue: [ self resetView ].
	model := aModel.
	self initModel
]

{ #category : #initialization }
WsMvcComponent >> newModel [
	^self class newModel
]
