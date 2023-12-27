Class {
	#name : #WsTodoListComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsTodoListComponentTest class >> appClass [ 
	^WsTodoListApp 
]

{ #category : #tests }
WsTodoListComponentTest >> assertBehavior [

	| addItemButton |
	listComponent := root querySelector: WsListComponent tagName . 
	self assert: self itemComponents isEmpty.
	addItemButton := root querySelector: 'button'.
	1 to: 3 do: [ :expectedCount |
		addItemButton click.
		self assert: self itemComponents size equals: expectedCount ]
]

{ #category : #tests }
WsTodoListComponentTest >> componentClasses [
	^super componentClasses, { WsListComponent . WsListItemComponent  }
]

{ #category : #tests }
WsTodoListComponentTest >> expectedTitle [

	^ 'ToDo List'
]

{ #category : #tests }
WsTodoListComponentTest >> itemComponents [

	^ listComponent shadowRoot querySelectorAll: WsListItemComponent tagName
]