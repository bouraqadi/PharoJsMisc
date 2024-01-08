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
WsCounterListComponent >> add: anInteger [

	| counter |
	counter := WsCounterComponent newModel.
	counter count: anInteger.
	super add: counter
]

{ #category : #adding }
WsCounterListComponent >> newItemComponent: aCounterModel [

	^ WsCounterComponent
		  model: aCounterModel
]
