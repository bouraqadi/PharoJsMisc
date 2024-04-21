Class {
	#name : #WsListComponentTest,
	#superclass : #WsMvcComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #testing }
WsListComponentTest class >> isAbstract [ 
	^self == WsListComponentTest 
]

{ #category : #asserting }
WsListComponentTest >> assertViewModelLink [

	| itemModels itemComponents |
	itemModels := model items asLocalObject.
	itemComponents := self itemElements collect: [ :each |
		                  each querySelector:
			                  self itemComponentClass tagName ].
	itemModels with: itemComponents do: [ :aModel :itemComponent |
		self assertViewOf: itemComponent linkedToModel: aModel ]
]

{ #category : #asserting }
WsListComponentTest >> assertViewOf: itemComponent linkedToModel: itemModel [

	self assert: itemComponent model identicalTo: itemModel.
	self itemComponentAsserter assert: itemComponent
]

{ #category : #adding }
WsListComponentTest >> itemComponentClass [

	^ self rootComponentClass itemComponentClass
]

{ #category : #tests }
WsListComponentTest >> itemElements [

	^ (shadowRoot querySelectorAll: #li) asLocalObject 
]
