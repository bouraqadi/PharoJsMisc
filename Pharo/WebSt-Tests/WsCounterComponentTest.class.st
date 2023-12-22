Class {
	#name : #WsCounterComponentTest,
	#superclass : #WsComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCounterComponentTest class >> appClass [

	^ WsCounterApp 
]

{ #category : #tests }
WsCounterComponentTest >> allCounterComponents [

	^ document querySelectorAll: WsCounterComponent tagName
]

{ #category : #tests }
WsCounterComponentTest >> assertBehaviorOfCounter: counter [

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
WsCounterComponentTest >> testBehavior [

	| counter |
	counter := self allCounterComponents first.
	self assertBehaviorOfCounter: counter
]

{ #category : #tests }
WsCounterComponentTest >> testDynamicAddition [

	| newCounter tagName div embeddedCounter |
	tagName := WsCounterComponent tagName.
	newCounter := document createElement: tagName.
	document body appendChild: newCounter.
	self assertBehaviorOfCounter: newCounter.
	div := document createElement: 'div'.
	document body appendChild: div.
	div innerHTML: '<' , tagName , '></' , tagName , '>'.
	self assert: div childNodes size equals: 1.
	embeddedCounter := div childNodes first.
	self assertBehaviorOfCounter: embeddedCounter
]

{ #category : #tests }
WsCounterComponentTest >> testHtmlGeneration [

	| componentHtml bodyHtml headHtml shadowHTML tagName |
	headHtml := document head innerHTML.
	{ '<title>Counter</title>'. 'type="text/javascript" src="index.js' }
		do: [ :expectedHtml |
			self assert: (headHtml includesSubstring: expectedHtml) ].
	bodyHtml := document body innerHTML.
	tagName := WsCounterComponent tagName.
	componentHtml := '<' , tagName , '></' , tagName , '>'.
	self assert: (bodyHtml includesSubstring: componentHtml).
	shadowHTML := (document querySelector: WsCounterComponent tagName)
		              shadowRoot innerHTML.
	{ '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"'.
	'<script defer="" type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"' }
		do: [ :expectedHtml |
			self deny: (bodyHtml includesSubstring: expectedHtml).
			self assert: (shadowHTML includesSubstring: expectedHtml) ]
]
