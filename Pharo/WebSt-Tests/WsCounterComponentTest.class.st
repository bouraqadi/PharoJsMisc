Class {
	#name : #WsCounterComponentTest,
	#superclass : #WsMvcComponentTest,
	#instVars : [
		'counterAsserter'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCounterComponentTest class >> appClass [

	^ WsCounterApp
]

{ #category : #asserting }
WsCounterComponentTest >> assertViewModelLink [

	counterAsserter assertViewModelLink
]

{ #category : #asserting }
WsCounterComponentTest >> changeModelValues [

	model count: 42
]

{ #category : #accessing }
WsCounterComponentTest >> component: aComponent [

	super component: aComponent.
	counterAsserter := WsCounterComponentTestAsserter component: aComponent 
]
