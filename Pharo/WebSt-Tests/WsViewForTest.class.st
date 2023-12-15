Class {
	#name : #WsViewForTest,
	#superclass : #Object,
	#traits : 'WsTViewFactory + WsTResourceFactory',
	#classTraits : 'WsTViewFactory classTrait + WsTResourceFactory classTrait',
	#instVars : [
		'externalResources'
	],
	#category : #'WebSt-Tests-Views'
}

{ #category : #accessing }
WsViewForTest >> addResource: aResource [
	self externalResources add: aResource
]

{ #category : #accessing }
WsViewForTest >> externalResources [

	^ externalResources
]

{ #category : #accessing }
WsViewForTest >> externalResources: anObject [

	externalResources := anObject
]

{ #category : #initialization }
WsViewForTest >> initialize [

	super initialize.
	externalResources := OrderedCollection new
]
