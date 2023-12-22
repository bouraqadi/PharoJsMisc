Class {
	#name : #WsResourceCollectingRenderer,
	#superclass : #WsRenderer,
	#instVars : [
		'resources'
	],
	#category : #'WebSt-Base-Kernel'
}

{ #category : #initialization }
WsResourceCollectingRenderer >> initialize [ 
	super initialize.
	resources := Set new
]

{ #category : #rendering }
WsResourceCollectingRenderer >> renderElement: aView [
	resources addAll: aView resources.
	super renderElement: aView

]

{ #category : #accessing }
WsResourceCollectingRenderer >> resources [

	^ resources
]
