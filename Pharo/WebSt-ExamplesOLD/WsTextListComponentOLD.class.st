Class {
	#name : #WsTextListComponentOLD,
	#superclass : #WsListComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #'class initialization' }
WsTextListComponentOLD class >> tagName [

	^ 'ws-text-list'
]

{ #category : #adding }
WsTextListComponentOLD >> initItemModel: textModel with: aString [
	textModel text: aString.

]

{ #category : #adding }
WsTextListComponentOLD >> itemComponentClass [
	^WsEditableTextComponentOLD 
]
