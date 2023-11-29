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

{ #category : #accessing }
WsResource >> url [

	^ url
]

{ #category : #accessing }
WsResource >> url: anObject [

	url := anObject
]
