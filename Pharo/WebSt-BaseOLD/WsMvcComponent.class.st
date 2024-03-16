Class {
	#name : #WsMvcComponent,
	#superclass : #WsComponentOLD,
	#instVars : [
		'model'
	],
	#category : #'WebSt-BaseOLD-Components'
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

{ #category : #initialization }
WsMvcComponent >> linkModelAndView [

	^self
]

{ #category : #accessing }
WsMvcComponent >> model [

	^ model
]

{ #category : #initialization }
WsMvcComponent >> model: aModel [

	(model notNil or: [ view isNil ]) ifTrue: [ self resetView ].
	model := aModel.
	self initModel.
	self linkModelAndView
]

{ #category : #initialization }
WsMvcComponent >> newModel [
	^self class newModel
]
