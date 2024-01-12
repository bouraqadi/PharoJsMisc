Class {
	#name : #WsToDoListItemComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #'class initialization' }
WsToDoListItemComponent class >> tagName [

	^ 'ws-list-item'
]

{ #category : #rendering }
WsToDoListItemComponent class >> viewClass [

	<pharoJsSkip>
	^ WsToDoListItemView
]
