Class {
	#name : #WsComponentTest,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#instVars : [
		'root',
		'component'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #testing }
WsComponentTest class >> isAbstract [

	^ self == WsComponentTest
]

{ #category : #tests }
WsComponentTest >> allComponents [

	^ document querySelectorAll: self tagName
]

{ #category : #tests }
WsComponentTest >> assertBehavior [

	self subclassResponsibility
]

{ #category : #tests }
WsComponentTest >> assertBehavior: aComponent [

	self component: aComponent.
	self assertBehavior
]

{ #category : #tests }
WsComponentTest >> component: aComponent [

	component := aComponent.
	root := component shadowRoot
]

{ #category : #accessing }
WsComponentTest >> componentClass [
	^self appClass rootComponentClass
]

{ #category : #tests }
WsComponentTest >> componentClasses [

	^{self componentClass}
]

{ #category : #tests }
WsComponentTest >> expectedTitle [

	^self appClass title
]

{ #category : #tests }
WsComponentTest >> resourceHtmls [

	^#(  )
]

{ #category : #accessing }
WsComponentTest >> tagName [
	^self componentClass tagName
]

{ #category : #tests }
WsComponentTest >> testBehavior [

	self assertBehavior: self allComponents first.
]

{ #category : #tests }
WsComponentTest >> testComponentClassesExport [
	self componentClasses do: [ : each|
		self deny: (globalThis at: each name) isNil ]
		
]

{ #category : #tests }
WsComponentTest >> testDynamicAddition [

	| newComponent  div embeddedComponent |
	newComponent := document createElement: self tagName.
	document body appendChild: newComponent.
	self assertBehavior: newComponent.
	div := document createElement: 'div'.
	document body appendChild: div.
	div innerHTML: '<' , self tagName , '></' , self tagName , '>'.
	self assert: div childNodes size equals: 1.
	embeddedComponent := div childNodes first.
	self assertBehavior: embeddedComponent
]

{ #category : #tests }
WsComponentTest >> testHtmlGeneration [

	| componentHtml bodyHtml headHtml shadowHTML |
	headHtml := document head innerHTML.
	{
		('<title>' , self expectedTitle , '</title>').
		'type="text/javascript" src="index.js' } do: [ :expectedHtml |
		self assert: (headHtml includesSubstring: expectedHtml) ].
	bodyHtml := document body innerHTML.
	componentHtml := '<' , self tagName , '></' , self tagName , '>'.
	self assert: (bodyHtml includesSubstring: componentHtml).
	shadowHTML := (document querySelector: self componentClass tagName)
		              shadowRoot innerHTML.
	self resourceHtmls do: [ :expectedHtml |
		self deny: (bodyHtml includesSubstring: expectedHtml).
		self assert: (shadowHTML includesSubstring: expectedHtml) ]
]
