Class {
	#name : #WsTextListComponentTestOLD,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #'suite parameters' }
WsTextListComponentTestOLD class >> appClass [

	^ WsTextListAppOLD 
]

{ #category : #tests }
WsTextListComponentTestOLD >> assertBehavior [

	| itemsCount |
	itemsCount := self itemElements size.
	#( some more content to add ) do: [ :each |
		component addContent: each.
		itemsCount := itemsCount + 1.
		self assert: self itemElements size equals: itemsCount.
		self assertItemAt: itemsCount textContentEquals: each ].
	{
		1.
		itemsCount }
		with: #( hyperspace teleportation )
		do: [ :index :newText | (model itemAt: index) text: newText ].
	self assertViewModelLink
]

{ #category : #tests }
WsTextListComponentTestOLD >> assertItemAt: index textContentEquals: expectedContent [
	| item actualContent |
	item := self itemElements at: index.
	actualContent := item children first shadowRoot textContent.
	self assert:  actualContent 
			equals: expectedContent
]

{ #category : #tests }
WsTextListComponentTestOLD >> assertViewModelLink [

| textItems |
textItems := model items.
self assert: self itemElements size equals: textItems size.
			1 to:  model items size do: [ : index |
				self assertItemAt: index textContentEquals: (textItems at: index) text
				
		]
]

{ #category : #tests }
WsTextListComponentTestOLD >> changeModel [

	self evalBlock: [
		|textModels|	
		textModels := #( hello world is so ubiquitous ) collect: [: each | WsTextModel text: each].
	model addAll: textModels]
]

{ #category : #tests }
WsTextListComponentTestOLD >> itemElements [

	^ root querySelectorAll: #li
]
