Class {
	#name : #WsBasicTextListComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#instVars : [
		'listComponent'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #'suite parameters' }
WsBasicTextListComponentTest class >> appClass [

	^ WsBasicTextListApp 
]

{ #category : #tests }
WsBasicTextListComponentTest >> assertBehavior [

	| itemsCount |
	itemsCount := self itemElements size.
	#( some more content to add ) do: [ :each |
		model add: each.
		itemsCount := itemsCount + 1.
		self assert: self itemElements size equals: itemsCount.
		self
			assertItemAt: itemsCount
			textContentEquals: each ]
]

{ #category : #tests }
WsBasicTextListComponentTest >> assertItemAt: index textContentEquals: expectedContent [
	| item actualContent |
	item := self itemElements at: index.
	actualContent := item children first shadowRoot textContent.
	self assert:  actualContent 
			equals: expectedContent
]

{ #category : #tests }
WsBasicTextListComponentTest >> assertViewMatchesModel [

| textContents |
textContents := model items.
self assert: self itemElements size equals: textContents size.
			1 to:  model items size do: [ : index |
				self assertItemAt: index textContentEquals: (textContents at: index) 
				
		]
]

{ #category : #tests }
WsBasicTextListComponentTest >> itemElements [

	^ root querySelectorAll: #li
]
