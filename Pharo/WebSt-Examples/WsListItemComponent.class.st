Class {
	#name : #WsListItemComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsListItemComponent class >> viewClass [

	<pharoJsSkip>
	^ WsListItemView
]
