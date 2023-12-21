Class {
	#name : #WsViewForTest,
	#superclass : #WsCustomView,
	#instVars : [
		'externalResources'
	],
	#category : #'WebSt-Tests-Factory'
}

{ #category : #accessing }
WsViewForTest >> addResource: aResource [
	self externalResources add: aResource
]

{ #category : #accessing }
WsViewForTest >> externalResources [

	^ externalResources
]

{ #category : #initialization }
WsViewForTest >> initialize [

	super initialize.
	externalResources := OrderedCollection new
]
