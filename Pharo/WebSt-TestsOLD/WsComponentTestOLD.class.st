Class {
	#name : #WsComponentTestOLD,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#instVars : [
		'root',
		'component'
	],
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #testing }
WsComponentTestOLD class >> isAbstract [

	^ self == WsComponentTestOLD
]

{ #category : #tests }
WsComponentTestOLD >> allComponents [

	^ document querySelectorAll: self tagName
]

{ #category : #tests }
WsComponentTestOLD >> assertBehavior [

	self subclassResponsibility
]

{ #category : #tests }
WsComponentTestOLD >> assertBehavior: aComponent [

	self component: aComponent.
	self assertBehavior
]

{ #category : #tests }
WsComponentTestOLD >> component: aComponent [

	component := aComponent.
	root := component shadowRoot
]

{ #category : #accessing }
WsComponentTestOLD >> componentClass [
	^self appClass rootComponentClass
]

{ #category : #tests }
WsComponentTestOLD >> componentClasses [

	^{self componentClass}
]

{ #category : #tests }
WsComponentTestOLD >> expectedTitle [

	^self appClass title
]

{ #category : #tests }
WsComponentTestOLD >> resourceHtmls [

	^#(  )
]

{ #category : #accessing }
WsComponentTestOLD >> tagName [
	^self componentClass tagName
]

{ #category : #tests }
WsComponentTestOLD >> testBehavior [

	self assertBehavior: self allComponents first.
]

{ #category : #tests }
WsComponentTestOLD >> testComponentClassesExport [
	self componentClasses do: [ : each|
		self deny: (globalThis at: each name) isNil ]
		
]

{ #category : #tests }
WsComponentTestOLD >> testDynamicAddition [

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
WsComponentTestOLD >> testHtmlGeneration [

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
