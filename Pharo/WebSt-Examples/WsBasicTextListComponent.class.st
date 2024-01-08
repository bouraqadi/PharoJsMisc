Class {
	#name : #WsBasicTextListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'class initialization' }
WsBasicTextListComponent class >> tagName [

	^ 'ws-text-list'
]

{ #category : #adding }
WsBasicTextListComponent >> newItemComponent: itemContent [

	^ WsBasicTextComponent text: itemContent
]
