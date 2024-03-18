"
I represent an external CSS file.
"
Class {
	#name : #WsCssLink,
	#superclass : #WsResource,
	#category : #'WebSt-Base-Views'
}

{ #category : #initialization }
WsCssLink >> addTo: resourceManager [
	resourceManager addLocalResource: self
]

{ #category : #initialization }
WsCssLink >> renderTagOn: html [

	^ html link
		beStylesheet;
		url: self url;
		yourself
]
