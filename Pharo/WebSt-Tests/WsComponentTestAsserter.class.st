Class {
	#name : #WsComponentTestAsserter,
	#superclass : #TestAsserter,
	#instVars : [
		'domRoot',
		'model'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #asserting }
WsComponentTestAsserter >> assert [
	self assertViewModelLink 
]

{ #category : #asserting }
WsComponentTestAsserter >> assertViewModelLink [
	self subclassResponsibility 
]

{ #category : #accessing }
WsComponentTestAsserter >> component: aCounterComponent [

	model := aCounterComponent model.
	domRoot := aCounterComponent view.
]

{ #category : #accessing }
WsComponentTestAsserter >> resources [

	^ #()
]

{ #category : #running }
WsComponentTestAsserter >> setUp [

	^ self
]

{ #category : #running }
WsComponentTestAsserter >> tearDown [

	^ self
]
