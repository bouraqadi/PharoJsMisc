Class {
	#name : #WsResourceAwareHtmlRenderer,
	#superclass : #WsHtmlRenderer,
	#instVars : [
		'resources'
	],
	#category : #'WebSt-Rendering'
}

{ #category : #initialization }
WsResourceAwareHtmlRenderer >> initialize [

	super initialize.
	resources := Set new
]

{ #category : #rendering }
WsResourceAwareHtmlRenderer >> renderComponent: component [


	resources addAll: component externalResources.
	super renderView: component
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
