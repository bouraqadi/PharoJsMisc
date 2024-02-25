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
WsMvcComponentTest >> changeModel [
	self subclassResponsibility
	
]

{ #category : #tests }
WsMvcComponentTest >> component: aComponent [

	super component: aComponent.
	model := aComponent model.
]

{ #category : #tests }
WsMvcComponentTest >> jsComponentClass [
	^self bridge jsGlobalAt: self componentClass name
]

{ #category : #tests }
WsMvcComponentTest >> setUpComponentWithExistingModel [
"Insert new components at the top of the page to make them easier to view, because during debug, PharoJS insert logs in the page. So, any appendded HTML element get pushed very down and checking it require a lot of scrolling"
	self component: (self jsComponentClass model: model).
	document body insertBefore: component child: self allComponents first
]

{ #category : #tests }
WsMvcComponentTest >> setUpNewModel [

	model := self jsComponentClass newModel
]

{ #category : #tests }
WsMvcComponentTest >> testCreateComponentWithModifiedModel [

	self setUpNewModel.
	self changeModel.
	self setUpComponentWithExistingModel.
	self assertViewMatchesModel.
]

{ #category : #tests }
WsMvcComponentTest >> testCreateComponentWithNewModel [

	self setUpNewModel.
	self setUpComponentWithExistingModel.
	self assertViewMatchesModel
]
