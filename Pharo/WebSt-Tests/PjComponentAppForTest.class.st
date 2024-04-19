Class {
	#name : #PjComponentAppForTest,
	#superclass : #PjWebApplication,
	#classInstVars : [
		'rootComponentClass'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #WsView }
PjComponentAppForTest class >> rootComponentClass [

	^ rootComponentClass
]

{ #category : #WsView }
PjComponentAppForTest class >> rootComponentClass: anObject [

	rootComponentClass := anObject
]
