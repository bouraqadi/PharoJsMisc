Class {
	#name : #WsToDoListComponentTest,
	#superclass : #WsListComponentTest,
	#category : #'WebSt-Tests-Examples'
}

{ #category : #accessing }
WsToDoListComponentTest class >> componentClass [

	^ WsToDoListComponent 
]

{ #category : #asserting }
WsToDoListComponentTest >> changeModelValues [

	self evalBlock: [
		model addAllTexts:
			#( 'Butter' 'Milk' 'eggs'
			   'bread' 'Honey' ) ].
		model items first isChecked: true.
		model items third isChecked: true
]

{ #category : #asserting }
WsToDoListComponentTest >> itemComponentAsserter [

	^ WsToDoItemComponentTestAsserter
]
