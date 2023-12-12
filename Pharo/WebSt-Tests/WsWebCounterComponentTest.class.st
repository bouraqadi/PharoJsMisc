Class {
	#name : #WsWebCounterComponentTest,
	#superclass : #WsWebComponentTest,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #'suite parameters' }
WsWebCounterComponentTest class >> appClass [

	^ WsAppForTest 
]

{ #category : #tests }
WsWebCounterComponentTest >> allCounterComponents [

	^ document querySelectorAll: self tagName
]

{ #category : #tests }
WsWebCounterComponentTest >> assertBehaviorOfCounter: counter [

	| display resetBtn root incrementBtn decrementBtn |
	root := counter shadowRoot.
	display := root querySelector: '.display'.
	incrementBtn := root querySelector: '.increment'.
	decrementBtn := root querySelector: '.decrement'.
	resetBtn := root querySelector: '.reset'.
	self assert: display textContent equals: 0 asString.
	3 timesRepeat: [ incrementBtn click ].
	self assert: display textContent equals: 3 asString.
	5 timesRepeat: [ decrementBtn click ].
	self assert: display textContent equals: -2 asString.
	resetBtn click.
	self assert: display textContent equals: 0 asString
]

{ #category : #tests }
WsWebCounterComponentTest >> tagName [
 
	^ WsCounterComponent tagName
]

{ #category : #tests }
WsWebCounterComponentTest >> testAddCounterComponentDynamically [

	| newCounter |
	newCounter := document createElement: WsCounterComponent tagName.
	document body appendChild: newCounter.
	self assertBehaviorOfCounter: newCounter
]

{ #category : #tests }
WsWebCounterComponentTest >> testAppIncludesCounterComponentTag [

	| elements |
	elements := self allCounterComponents.
	self assert: elements size equals: 1.
	self assert: elements first parentNode identicalTo: document body
]

{ #category : #tests }
WsWebCounterComponentTest >> testCounterComponentBehavior [

	| counter |
	counter := self allCounterComponents first.
	self assertBehaviorOfCounter: counter
]

{ #category : #tests }
WsWebCounterComponentTest >> testHtmlGeneration [

	| expectedHtml counter |
	expectedHtml := '<',self tagName,'></',self tagName,'>'.
	self assert: WsCounterComponent html equals: expectedHtml.
	counter := self allCounterComponents first.
	self assert: (counter outerHTML includesSubstring: expectedHtml).
	self assert: counter html equals: expectedHtml
]

{ #category : #tests }
WsWebCounterComponentTest >> testHtmlPageGeneration [

	| componentHtml bodyHtml headHtml pageHtml |
	componentHtml := '<' , self tagName , '></' , self tagName , '>'.
	pageHtml := WsCounterComponent pageHtml.
	bodyHtml := document body innerHTML.
	{
		pageHtml.
		bodyHtml } do: [ :containerHtml |
		self assert: (containerHtml includesSubstring: componentHtml) ].
	headHtml := document head innerHTML.
	{ '<title>Counter</title>'. '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"'.
	'<script defer type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"'.
	'<script defer type="text/javascript" src="index.js' } do: [
		:expectedHtml |
		{
			pageHtml.
			bodyHtml } do: [ :containerHtml |
			self assert: (containerHtml includesSubstring: expectedHtml) ] ]
]
