Class {
	#name : #WsMvcComponentTestOLD,
	#superclass : #WsComponentTestOLD,
	#instVars : [
		'model'
	],
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #testing }
WsMvcComponentTestOLD class >> isAbstract [ 
	^super isAbstract or: [ self == WsMvcComponentTestOLD ]
]

{ #category : #tests }
WsMvcComponentTestOLD >> assertBehavior: aComponent [
	model := aComponent model.
	super assertBehavior: aComponent.

]

{ #category : #tests }
WsMvcComponentTestOLD >> assertViewModelLink [
	self subclassResponsibility 
]

{ #category : #tests }
WsMvcComponentTestOLD >> changeModel [
	self subclassResponsibility
	
]

{ #category : #tests }
WsMvcComponentTestOLD >> component: aComponent [

	super component: aComponent.
	model := aComponent model.
]

{ #category : #tests }
WsMvcComponentTestOLD >> jsComponentClass [
	^self bridge jsGlobalAt: self componentClass name
]

{ #category : #tests }
WsMvcComponentTestOLD >> setUpComponentWithExistingModel [
"Insert new components at the top of the page to make them easier to view, because during debug, PharoJS insert logs in the page. So, any appendded HTML element get pushed very down and checking it require a lot of scrolling"
	self component: (self jsComponentClass model: model).
	document body insertBefore: component child: self allComponents first
]

{ #category : #tests }
WsMvcComponentTestOLD >> setUpNewModel [

	model := self jsComponentClass newModel
]

{ #category : #tests }
WsMvcComponentTestOLD >> testCreateComponentWithModifiedModel [

	self setUpNewModel.
	self changeModel.
	self setUpComponentWithExistingModel.
	self assertViewModelLink.
]

{ #category : #tests }
WsMvcComponentTestOLD >> testCreateComponentWithNewModel [

	self setUpNewModel.
	self setUpComponentWithExistingModel.
	self assertViewModelLink
]
