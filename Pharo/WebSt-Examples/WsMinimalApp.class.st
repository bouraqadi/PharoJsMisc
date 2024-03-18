Class {
	#name : #WsMinimalApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Minimal'
}

{ #category : #rendering }
WsMinimalApp class >> rootComponentClass [

	^WsMinimalComponent 
]
