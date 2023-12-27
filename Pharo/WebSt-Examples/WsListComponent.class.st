Class {
	#name : #WsListComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'class initialization' }
WsListComponent class >> tagName [

	^'ws-list'
]

{ #category : #rendering }
WsListComponent class >> viewClass [

	<pharoJsSkip>
	^WsListView 
]

{ #category : #initialization }
WsListComponent >> initModel [

	^self
]
