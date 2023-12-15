Class {
	#name : #WsViewForTest,
	#superclass : #Object,
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
WsViewForTest >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
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

{ #category : #accessing }
WsViewForTest >> useCssAt: urlString [

	self addResourceClass: WsCssResource  url: urlString.

]

{ #category : #accessing }
WsViewForTest >> useJsAt: urlString [

	self addResourceClass: WsJsResource url: urlString
]
