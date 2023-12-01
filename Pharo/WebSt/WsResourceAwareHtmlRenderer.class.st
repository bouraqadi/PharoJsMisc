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
WsResourceAwareHtmlRenderer >> renderComponent: aComponent [

	resources addAll: aComponent externalResources.
	super renderComponent: aComponent
]

{ #category : #accessing }
WsResourceAwareHtmlRenderer >> resources [

	^ resources
]

{ #category : #accessing }
WsResourceAwareHtmlRenderer >> resources: anObject [

	resources := anObject
]
