Class {
	#name : #WsTodoListComponentTestOLD,
	#superclass : #WsTextListComponentTestOLD,
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #'suite parameters' }
WsTodoListComponentTestOLD class >> appClass [ 
	^WsToDoListApp 
]

{ #category : #tests }
WsTodoListComponentTestOLD >> assertBehavior [

	| addItemButton expectedCount |
	super assertBehavior.
	listComponent := root querySelector: WsToDoListItemComponentOLD tagName.
	expectedCount := self itemElements size.
	addItemButton := root querySelector: 'button'.
	 3 timesRepeat: [ 
		expectedCount := expectedCount + 1.
		addItemButton click.
		self assert: self itemElements size equals: expectedCount ]
]

{ #category : #tests }
WsTodoListComponentTestOLD >> changeModel [

	self evalBlock: [
		| textModels |
		textModels := #( banana orange apple 'pine apple' kiwi ) collect: [
			              :each | WsToDoItemModel text: each ].
		model addAll: textModels ]
]

{ #category : #tests }
WsTodoListComponentTestOLD >> componentClasses [

	^ super componentClasses , {
		  WsListComponentOLD.
		   }
]
