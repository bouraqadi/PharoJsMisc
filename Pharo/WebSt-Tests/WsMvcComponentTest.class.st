Class {
	#name : #WsMvcComponentTest,
	#superclass : #WsComponentTest,
	#instVars : [
		'model'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #testing }
WsMvcComponentTest class >> isAbstract [ 
	^super isAbstract or: [ self == WsMvcComponentTest ]
]

{ #category : #tests }
WsMvcComponentTest >> assertBehavior: aComponent [
	model := aComponent model.
	super assertBehavior: aComponent.

]

{ #category : #tests }
WsMvcComponentTest >> assertViewMatchesModel [
	self subclassResponsibility 
]

{ #category : #tests }
WsMvcComponentTest >> jsComponentClass [
	^self bridge jsGlobalAt: self componentClass name
]

{ #category : #tests }
WsMvcComponentTest >> setUpComponentWithExistingModel [

	self component: (self jsComponentClass model: model)
]

{ #category : #tests }
WsMvcComponentTest >> setUpModel [

	model := self jsComponentClass newModel
]

{ #category : #tests }
WsMvcComponentTest >> testCreateComponentWithExistingModel [

	self setUpModel.
	self setUpComponentWithExistingModel.
	self assertViewMatchesModel
]
