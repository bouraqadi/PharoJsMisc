Class {
	#name : #WsTodoListComponentTest,
	#superclass : #WsTextListComponentTest,
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #'suite parameters' }
WsTodoListComponentTest class >> appClass [ 
	^WsToDoListApp 
]

{ #category : #tests }
WsTodoListComponentTest >> assertBehavior [

	| addItemButton expectedCount |
	super assertBehavior.
	listComponent := root querySelector: WsToDoListItemComponent tagName.
	expectedCount := self itemElements size.
	addItemButton := root querySelector: 'button'.
	 3 timesRepeat: [ 
		expectedCount := expectedCount + 1.
		addItemButton click.
		self assert: self itemElements size equals: expectedCount ]
]

{ #category : #tests }
WsTodoListComponentTest >> changeModel [

	self evalBlock: [
		| textModels |
		textModels := #( banana orange apple 'pine apple' kiwi ) collect: [
			              :each | WsToDoListItemModel text: each ].
		model addAll: textModels ]
]

{ #category : #tests }
WsTodoListComponentTest >> componentClasses [

	^ super componentClasses , {
		  WsListComponent.
		   }
]
