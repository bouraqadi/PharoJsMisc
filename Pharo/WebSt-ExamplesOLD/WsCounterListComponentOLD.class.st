Class {
	#name : #WsCounterListComponentOLD,
	#superclass : #WsListComponentOLD,
	#traits : 'WsTConcreteComponentOLD',
	#classTraits : 'WsTConcreteComponentOLD classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #'class initialization' }
WsCounterListComponentOLD class >> tagName [

	^ 'ws-counter-list'
]

{ #category : #adding }
WsCounterListComponentOLD >> initItemModel: counter with: anInteger [
	counter count: anInteger.

]

{ #category : #adding }
WsCounterListComponentOLD >> itemComponentClass [

	^ WsCounterComponent
]
