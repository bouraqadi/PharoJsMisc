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
WsTextListComponent >> initItemModel: textModel with: aString [
	textModel text: aString.

]

{ #category : #adding }
WsTextListComponent >> itemComponentClass [
	^WsEditableTextComponent 
]
