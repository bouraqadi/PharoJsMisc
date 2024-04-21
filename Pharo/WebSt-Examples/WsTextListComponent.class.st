Class {
	#name : #WsTextListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #accessing }
WsTextListComponent class >> itemComponentClass [

	^ WsTextComponent 
]

{ #category : #'class initialization' }
WsTextListComponent class >> tagName [

	^'ws-text-list'
]

{ #category : #adding }
WsTextListComponent >> addAllTexts: newTexts [
	newTexts do: [ : each | self addText: each ]
]

{ #category : #adding }
WsTextListComponent >> addText: aString [

	| itemComponent |
	itemComponent := self itemModelClass text: aString.
	model add: itemComponent
]
