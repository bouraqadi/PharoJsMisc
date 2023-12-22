Class {
	#name : #WsListItemComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #'class initialization' }
WsListItemComponent class >> tagName [

	^ 'ws-list-item'
]

{ #category : #rendering }
WsListItemComponent class >> viewClass [

	<pharoJsSkip>
	^ WsListItemView
]
