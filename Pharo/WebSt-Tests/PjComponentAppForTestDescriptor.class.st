Class {
	#name : #PjComponentAppForTestDescriptor,
	#superclass : #Object,
	#traits : 'TEquality',
	#classTraits : 'TEquality classTrait',
	#instVars : [
		'superclass',
		'traits',
		'componentClass'
	],
	#category : #'WebSt-Tests-Components'
}

{ #category : #WsView }
PjComponentAppForTestDescriptor >> componentClass [

	^ componentClass
]

{ #category : #WsView }
PjComponentAppForTestDescriptor >> componentClass: anObject [

	componentClass := anObject
]

{ #category : #WsView }
PjComponentAppForTestDescriptor >> superclass [

	^ superclass
]

{ #category : #WsView }
PjComponentAppForTestDescriptor >> superclass: anObject [

	superclass := anObject
]

{ #category : #WsView }
PjComponentAppForTestDescriptor >> traits [

	^ traits
]

{ #category : #WsView }
PjComponentAppForTestDescriptor >> traits: anObject [

	traits := anObject
]
