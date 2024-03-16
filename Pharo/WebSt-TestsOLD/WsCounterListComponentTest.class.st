Class {
	#name : #WsCounterListComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #'suite parameters' }
WsCounterListComponentTest class >> appClass [

	^ WsCounterListApp
]

{ #category : #tests }
WsCounterListComponentTest >> assertBehavior [

	| itemsCount counterView display incrementBtn expectedCount |
	itemsCount := self itemElements size.
	1 to: 5 do: [ :each |
		component addContent: each.
		itemsCount := itemsCount + 1.
		self assert: self itemElements size equals: itemsCount.
		counterView := self itemElements last children first shadowRoot.
		display := counterView querySelector: '.display'.
		incrementBtn := counterView querySelector: '.increment'.
		expectedCount := each.
		self assert: display textContent equals: expectedCount asString.
		3 timesRepeat: [
			incrementBtn click.
			expectedCount := expectedCount + 1.
			self assert: display textContent equals: expectedCount asString ] ]
]

{ #category : #tests }
WsCounterListComponentTest >> assertCounterComponentAt: index linkedToCounter: counterModel [

	| expectedCount item counterComponent display |
	expectedCount := counterModel count.
	item := self itemElements at: index.
	counterComponent := item children first.
	self assert: counterComponent model identicalTo: counterModel.
	display := counterComponent display.
	self assert: display textContent equals: counterModel count asString
]

{ #category : #tests }
WsCounterListComponentTest >> assertViewMatchesModel [

	| counters |
	counters := model items.
	self assert: self itemElements size equals: counters size.
	1 to: counters size do: [ :index |
		self assertCounterComponentAt: index linkedToCounter: (counters at: index) ]
]

{ #category : #tests }
WsCounterListComponentTest >> changeModel [

	self evalBlock: [ #(42 35 21) do: [ : each| 
			model add: (WsCounterModel count: each) ]
	]
]

{ #category : #tests }
WsCounterListComponentTest >> itemElements [

	^ root querySelectorAll: #li
]
