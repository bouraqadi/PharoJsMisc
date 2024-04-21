Class {
	#name : #WsCounterListComponent,
	#superclass : #WsListComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #actions }
WsCounterListComponent class >> itemComponentClass [

	^ WsCounterComponent
]

{ #category : #'class initialization' }
WsCounterListComponent class >> tagName [

	^ 'ws-counter-list'
]
