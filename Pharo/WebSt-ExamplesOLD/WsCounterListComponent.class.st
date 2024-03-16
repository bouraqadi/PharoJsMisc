Class {
	#name : #WsCounterListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#category : #'WebSt-ExamplesOLD-List'
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
