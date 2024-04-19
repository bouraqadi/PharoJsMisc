Class {
	#name : #WsComponentTestV1,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#instVars : [
		'component',
		'shadowRoot'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #testing }
WsComponentTestV1 class >> isAbstract [

	^ self == WsComponentTestV1
]

{ #category : #accessing }
WsComponentTestV1 >> allComponents [
	^document querySelectorAll:
		                 self rootComponentClass  tagName.
]

{ #category : #tests }
WsComponentTestV1 >> assertComponent [ 
	self subclassResponsibility 
]

{ #category : #tests }
WsComponentTestV1 >> assertComponent: aComponent [

	self component: aComponent.
	self assertComponentClass.
	self assertComponent
]

{ #category : #tests }
WsComponentTestV1 >> assertComponentClass [

	| actualClass expectedClass |
	expectedClass := self bridge jsGlobalAt: self rootComponentClass name.
	actualClass := self evalBlock: [ component class ].
	self assert: actualClass identicalTo: expectedClass
]

{ #category : #accessing }
WsComponentTestV1 >> component: aComponent [
	component := aComponent.
	shadowRoot := component at: #shadowRoot.

]

{ #category : #tests }
WsComponentTestV1 >> jsComponentClass [

	^ self bridge jsGlobalAt: self rootComponentClass name
]

{ #category : #accessing }
WsComponentTestV1 >> rootComponentClass [
	^self appClass rootComponentClass
]

{ #category : #tests }
WsComponentTestV1 >> testDynamicComponentCreationBasic [

	| newComponent staticComponent |
	newComponent := self jsComponentClass new.
	staticComponent := self allComponents first.
	"Inserting new component first make it easier to view result during debug"
	document body
		insertBefore: newComponent
		existingChild: staticComponent.
	self assert: self allComponents size equals: 2.
	self assertComponent: newComponent
]

{ #category : #tests }
WsComponentTestV1 >> testStaticComponentCreation [
	"Component is defined using HTML tags. See WsTComponentApp >> #newPage."

	| allComponents |
	allComponents := self allComponents.
	self assert: allComponents size equals: 1.
	self assertComponent: allComponents first
]
