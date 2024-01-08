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
WsTextListComponent >> add: itemContent [

	listModel add: itemContent
]

{ #category : #adding }
WsTextListComponent >> addAll: itemContents [
	listModel addAll: itemContents 
]

{ #category : #adding }
WsTextListComponent >> newItemComponent: itemContent [

	^ WsTextComponent text: itemContent
]
