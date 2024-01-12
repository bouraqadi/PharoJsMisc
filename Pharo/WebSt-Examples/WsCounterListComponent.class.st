Class {
	#name : #WsCounterListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'class initialization' }
WsCounterListComponent class >> tagName [

	^ 'ws-counter-list'
]

{ #category : #adding }
WsCounterListComponent >> initItemModel: counter with: anInteger [
	counter count: anInteger.

]

{ #category : #adding }
WsCounterListComponent >> itemComponentClass [

	^ WsCounterComponent
]
