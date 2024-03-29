Class {
	#name : #WsMvcComponentOLD,
	#superclass : #WsComponentOLD,
	#instVars : [
		'model'
	],
	#category : #'WebSt-BaseOLD-Components'
}

{ #category : #'instance creation' }
WsMvcComponentOLD class >> model: aModel [

	^ self basicNew
		  model: aModel;
		  yourself
]

{ #category : #'instance creation' }
WsMvcComponentOLD class >> modelClass [

	self subclassResponsibility
]

{ #category : #'instance creation' }
WsMvcComponentOLD class >> newModel [

	^self modelClass new
]

{ #category : #initialization }
WsMvcComponentOLD >> initModel [

^self
]

{ #category : #initialization }
WsMvcComponentOLD >> initialize [

	super initialize.
	self model: self newModel.

]

{ #category : #initialization }
WsMvcComponentOLD >> linkModelAndView [

	^self
]

{ #category : #accessing }
WsMvcComponentOLD >> model [

	^ model
]

{ #category : #initialization }
WsMvcComponentOLD >> model: aModel [

	(model notNil or: [ view isNil ]) ifTrue: [ self resetView ].
	model := aModel.
	self initModel.
	self linkModelAndView
]

{ #category : #initialization }
WsMvcComponentOLD >> newModel [
	^self class newModel
]
