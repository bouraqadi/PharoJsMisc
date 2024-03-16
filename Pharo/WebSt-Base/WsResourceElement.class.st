"
I represent an external resource.
I am abstract.
My subclasses should allow representing specific kinds of resources such as CSS library, a JS library, an API access keys, a collection of fonts, images, or sounds, ...

"
Class {
	#name : #WsResourceElement,
	#superclass : #WsElement,
	#instVars : [
		'url',
		'integrity',
		'crossorigin'
	],
	#category : #'WebSt-Base-Views'
}

{ #category : #'instance creation' }
WsResourceElement class >> url: aString [
	^self new
		url: aString;
		yourself 
]

{ #category : #comparing }
WsResourceElement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ url = anObject url
]

{ #category : #initialization }
WsResourceElement >> crossoriginAnonymous [
	crossorigin := 'anonymous'
]

{ #category : #comparing }
WsResourceElement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ url hash
]

{ #category : #accessing }
WsResourceElement >> integrity: aString [
	integrity := aString
]

{ #category : #rendering }
WsResourceElement >> renderOuterHtmlOn: html [

	(self renderTagOn: html)
		attributeAt: #integrity put: integrity;
		attributeAt: #crossorigin put: crossorigin
]

{ #category : #rendering }
WsResourceElement >> renderTagOn: html [

	self subclassResponsibility
]

{ #category : #accessing }
WsResourceElement >> url [

	^ url
]

{ #category : #accessing }
WsResourceElement >> url: anObject [

	url := anObject
]
