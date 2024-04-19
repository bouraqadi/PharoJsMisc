Class {
	#name : #WsCounterListComponentTest,
	#superclass : #WsMvcComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #accessing }
WsCounterListComponentTest class >> componentClass [

	^ WsCounterListComponent
]

{ #category : #asserting }
WsCounterListComponentTest >> assertCounterComponentAt: index linkedToCounterModel: counterModel [
	self fail: #todo
	
]

{ #category : #asserting }
WsCounterListComponentTest >> assertViewModelLink [

	| counterModels counterComponents |
	counterModels := model items asLocalObject.
	counterComponents := self itemElements collect: [ :each |
		                     each querySelector: WsCounterComponent tagName ].
	counterModels
		with: counterComponents
		do: [ :aCounterModel :aCounterComponent |
			self assertViewOf: aCounterComponent linkedToModel: aCounterModel ] 
]

{ #category : #asserting }
WsCounterListComponentTest >> assertViewOf: aCounterComponent linkedToModel: aCounterModel [ 

	self assert: aCounterComponent model identicalTo: aCounterModel.
	WsCounterComponentTestAsserter assert: aCounterComponent 	 
]

{ #category : #asserting }
WsCounterListComponentTest >> changeModelValues [
	self evalBlock: [
		#( 42 35 21 ) do: [ :each | model add: (WsCounterModel count: each) ] ]
]

{ #category : #tests }
WsCounterListComponentTest >> itemElements [

	^ (shadowRoot querySelectorAll: #li) asLocalObject 
]
