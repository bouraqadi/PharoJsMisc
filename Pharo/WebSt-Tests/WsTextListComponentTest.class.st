Class {
	#name : #WsTextListComponentTest,
	#superclass : #WsListComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #accessing }
WsTextListComponentTest class >> componentClass [

	^ WsTextListComponent 
]

{ #category : #asserting }
WsTextListComponentTest >> changeModelValues [

	self evalBlock: [
		#( 'May the force be with you' 'Jedi Master' 'R2D2 droid'
		   'light saber' ) do: [ :each |
			model add: (WsTextModel text: each) ] ]
]

{ #category : #asserting }
WsTextListComponentTest >> itemComponentAsserter [

	^ WsTextComponentTestAsserter 
]
