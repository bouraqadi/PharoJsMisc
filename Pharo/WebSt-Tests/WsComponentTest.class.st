Class {
	#name : #WsComponentTest,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#instVars : [
		'root'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #testing }
WsComponentTest class >> isAbstract [ 
	^self == WsComponentTest 
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
WsComponentTest >> assertBehavior: component [

	root := component shadowRoot.
	self assertBehavior
]

{ #category : #accessing }
WsComponentTest >> componentClass [
	^self appClass rootComponentClass
]

{ #category : #tests }
WsComponentTest >> expectedTitle [
	self subclassResponsibility 
]

{ #category : #accessing }
WsComponentTest >> tagName [
	^self componentClass tagName
]

{ #category : #tests }
WsComponentTest >> testBehavior [

	| component |
	component := self allComponents first.
	self assertBehavior: component
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
	{ '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"'.
	'<script defer="" type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"' }
		do: [ :expectedHtml |
			self deny: (bodyHtml includesSubstring: expectedHtml).
			self assert: (shadowHTML includesSubstring: expectedHtml) ]
]
