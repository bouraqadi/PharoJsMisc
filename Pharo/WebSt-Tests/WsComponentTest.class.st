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
	self assertComponent
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
WsComponentTest >> testStaticComponentCreation [
	"Component is defined using HTML tags. See WsTComponentApp >> #newPage."

	| allComponents |
	allComponents := self allComponents.
	self assert: allComponents size equals: 1.
	self assertComponent: allComponents first
]
