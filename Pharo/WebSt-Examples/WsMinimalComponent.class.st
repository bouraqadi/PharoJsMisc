Class {
	#name : #WsMinimalComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Minimal'
}

{ #category : #'class initialization' }
WsMinimalComponent class >> tagName [ 
	^'ws-minimal'
]
