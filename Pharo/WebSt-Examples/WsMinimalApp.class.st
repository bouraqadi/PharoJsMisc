Class {
	#name : #WsMinimalApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Minimal'
}

{ #category : #description }
WsMinimalApp class >> rootComponentClass [

	^WsMinimalComponent 
]
