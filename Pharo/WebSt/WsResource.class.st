"
I represent an external resource.
I am abstract.
My subclasses should allow representing specific kinds of resources such as CSS library, a JS library, an API access keys, a collection of fonts, images, or sounds, ...

"
Class {
	#name : #WsResource,
	#superclass : #Object,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#instVars : [
		'url'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #'instance creation' }
WsResource class >> url: aString [
	^self new
		url: aString;
		yourself 
]

{ #category : #comparing }
WsResource >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ url = anObject url
]

{ #category : #comparing }
WsResource >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ url hash
]

{ #category : #accessing }
WsResource >> url [

	^ url
]

{ #category : #accessing }
WsResource >> url: anObject [

	url := anObject
]
