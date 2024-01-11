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

	self component: (self jsComponentClass model: model).
	document body append: component
]

{ #category : #tests }
WsMvcComponentTest >> setUpModifiedModel [
	self subclassResponsibility
	
]

{ #category : #tests }
WsMvcComponentTest >> setUpNewModel [

	model := self jsComponentClass newModel
]

{ #category : #tests }
WsMvcComponentTest >> testCreateComponentWithModifiedModel [

	self setUpNewModel.
	self setUpModifiedModel.
	self setUpComponentWithExistingModel.
	self assertViewMatchesModel.
]

{ #category : #tests }
WsMvcComponentTest >> testCreateComponentWithNewModel [

	self setUpNewModel.
	self setUpComponentWithExistingModel.
	self assertViewMatchesModel
]
