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
