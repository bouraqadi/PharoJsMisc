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

{ #category : #tests }
WsComponentTest >> assertComponent [ 
	self subclassResponsibility 
]

{ #category : #tests }
WsComponentTest >> assertComponent: aComponent [
	self component: aComponent.
	self assertComponent
]

{ #category : #tests }
WsComponentTest >> component: aComponent [
	component := aComponent.
	shadowRoot := component at: #shadowRoot.

]

{ #category : #tests }
WsComponentTest >> testStaticComponentCreation [
	"Component is defined using HTML tags. See WsTComponentApp >> #newPage."

	| allComponents |
	allComponents := document querySelectorAll:
		                 WsMinimalComponent tagName.
	self assert: allComponents size equals: 1.
	self assertComponent: allComponents first.
]
