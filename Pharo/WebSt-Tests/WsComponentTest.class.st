Class {
	#name : #WsComponentTest,
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
WsComponentTest class >> isAbstract [

	^ self == WsComponentTest
]

{ #category : #accessing }
WsComponentTest >> allComponents [
	^document querySelectorAll:
		                 self rootComponentClass  tagName.
]

{ #category : #tests }
WsComponentTest >> assertComponent [ 
	self subclassResponsibility 
]

{ #category : #tests }
WsComponentTest >> assertComponent: aComponent [

	self component: aComponent.
	self assertComponentClass.
	self assertComponent
]

{ #category : #tests }
WsComponentTest >> assertComponentClass [

	| actualClass expectedClass |
	expectedClass := self bridge jsGlobalAt: self rootComponentClass name.
	actualClass := self evalBlock: [ component class ].
	self assert: actualClass identicalTo: expectedClass
]

{ #category : #accessing }
WsComponentTest >> component: aComponent [
	component := aComponent.
	shadowRoot := component at: #shadowRoot.

]

{ #category : #accessing }
WsComponentTest >> rootComponentClass [
	^self appClass rootComponentClass
]

{ #category : #tests }
WsComponentTest >> testDynamicComponentCreation [

	| newComponent staticComponent jsComponentClass |
	jsComponentClass := self bridge jsGlobalAt: self rootComponentClass name.
	newComponent := jsComponentClass new.
	staticComponent := self allComponents first.
	"Inserting new component first make it easier to view result during debug"
	document body insertBefore: newComponent existingChild: staticComponent.
	self assert: self allComponents size equals: 2.
	self assertComponent: newComponent
]

{ #category : #tests }
WsComponentTest >> testStaticComponentCreation [
	"Component is defined using HTML tags. See WsTComponentApp >> #newPage."

	| allComponents |
	allComponents := self allComponents.
	self assert: allComponents size equals: 1.
	self assertComponent: allComponents first
]
