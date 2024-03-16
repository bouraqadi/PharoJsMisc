Class {
	#name : #WsTextListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #'class initialization' }
WsTextListComponent class >> tagName [

	^ 'ws-text-list'
]

{ #category : #adding }
WsTextListComponent >> initItemModel: textModel with: aString [
	textModel text: aString.

]

{ #category : #adding }
WsTextListComponent >> itemComponentClass [
	^WsEditableTextComponent 
]
