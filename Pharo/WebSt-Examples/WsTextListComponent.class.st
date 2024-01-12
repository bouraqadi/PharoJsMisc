Class {
	#name : #WsTextListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'class initialization' }
WsTextListComponent class >> tagName [

	^ 'ws-text-list'
]

{ #category : #adding }
WsTextListComponent >> add: aString [

	| textModel |
	textModel := WsTextComponent newModel.
	textModel text: aString.
	super add: textModel
]

{ #category : #adding }
WsTextListComponent >> newItemComponent: aTextModel [

	^ WsTextComponent model: aTextModel
]
