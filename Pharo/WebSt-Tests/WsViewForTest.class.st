Class {
	#name : #WsViewForTest,
	#superclass : #WsView,
	#instVars : [
		'resources'
	],
	#category : #'WebSt-Tests-Kernel'
}

{ #category : #accessing }
WsViewForTest >> addResource: aResource [
	self resources add: aResource
]

{ #category : #initialization }
WsViewForTest >> initialize [

	super initialize.
	resources := OrderedCollection new
]

{ #category : #accessing }
WsViewForTest >> resources [

	^ resources
]
