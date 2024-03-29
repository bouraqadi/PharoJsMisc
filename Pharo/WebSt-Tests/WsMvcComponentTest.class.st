Class {
	#name : #WsMvcComponentTest,
	#superclass : #WsComponentTest,
	#instVars : [
		'model'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #testing }
WsMvcComponentTest class >> isAbstract [

	^ super isAbstract or: [ self == WsMvcComponentTest ]
]

{ #category : #asserting }
WsMvcComponentTest >> assertComponent [

	self assertViewModelLink.
	self changeModelValues.
	self assertViewModelLink.
	self replaceModel.
	self assertViewModelLink.

]

{ #category : #asserting }
WsMvcComponentTest >> assertViewModelLink [

	self subclassResponsibility
]

{ #category : #asserting }
WsMvcComponentTest >> changeModelValues [

	self subclassResponsibility
]

{ #category : #accessing }
WsMvcComponentTest >> component: aComponent [

	super component: aComponent.
	model := aComponent model
]

{ #category : #tests }
WsMvcComponentTest >> jsComponentClass [

	^ self bridge jsGlobalAt: self rootComponentClass name
]

{ #category : #asserting }
WsMvcComponentTest >> replaceModel [
	"Replace the model of the component in JavaScript using the component class in JS"
	"Ensure all test IVs related to component are updated since replacing the model triggers other changes. See WsMvcComponent>>#model:"

	component model: self jsComponentClass newModel.
	self component: component
]
