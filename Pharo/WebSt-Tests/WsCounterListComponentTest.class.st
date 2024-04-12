Class {
	#name : #WsCounterListComponentTest,
	#superclass : #WsMvcComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCounterListComponentTest class >> appClass [

	^ WsCounterListApp
]

{ #category : #asserting }
WsCounterListComponentTest >> assertCounterComponentAt: index linkedToCounterModel: counterModel [
	self fail: #todo
	
]

{ #category : #asserting }
WsCounterListComponentTest >> assertViewModelLink [

	| counters |
	counters := model items.
	self assert: self itemElements size equals: counters size.
	1 to: counters size do: [ :index |
		self
			assertCounterComponentAt: index
			linkedToCounterModel: (counters at: index) ]
]

{ #category : #asserting }
WsCounterListComponentTest >> changeModelValues [
	self evalBlock: [
		#( 42 35 21 ) do: [ :each | model add: (WsCounterModel count: each) ] ]
]

{ #category : #tests }
WsCounterListComponentTest >> itemElements [

	^ shadowRoot querySelectorAll: #li
]
