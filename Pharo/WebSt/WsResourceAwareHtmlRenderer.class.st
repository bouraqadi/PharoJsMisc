Class {
	#name : #WsResourceAwareHtmlRenderer,
	#superclass : #WsHtmlRenderer,
	#instVars : [
		'resources'
	],
	#category : #'WebSt-Views'
}

{ #category : #initialization }
WsResourceAwareHtmlRenderer >> initialize [

	super initialize.
	resources := Set new
]

{ #category : #rendering }
WsResourceAwareHtmlRenderer >> renderView: aView [

	resources addAll: aView externalResources.
	super renderView: aView
]

{ #category : #accessing }
WsResourceAwareHtmlRenderer >> resources [

	^ resources
]

{ #category : #accessing }
WsResourceAwareHtmlRenderer >> resources: anObject [

	resources := anObject
]
