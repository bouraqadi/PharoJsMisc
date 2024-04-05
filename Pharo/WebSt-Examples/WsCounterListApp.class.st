Class {
	#name : #WsCounterListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsCounterListApp class >> rootComponentClass [

	^WsCounterListComponent 
]
