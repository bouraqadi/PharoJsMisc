"
I represent an external resource.
I am abstract.
My subclasses should allow representing specific kinds of resources such as CSS library, a JS library, an API access keys, a collection of fonts, images, or sounds, ...

"
Class {
	#name : #WsBasicResource,
	#superclass : #WsResource,
	#instVars : [
		'url',
		'integrity',
		'crossorigin'
	],
	#category : #'WebSt-ViewsOLD'
}

{ #category : #'instance creation' }
WsBasicResource class >> url: aString [
	^self new
		url: aString;
		yourself 
]

{ #category : #comparing }
WsBasicResource >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ url = anObject url
]

{ #category : #initialization }
WsBasicResource >> crossoriginAnonymous [
	crossorigin := 'anonymous'
]

{ #category : #comparing }
WsBasicResource >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ url hash
]

{ #category : #accessing }
WsBasicResource >> integrity: aString [
	integrity := aString
]

{ #category : #rendering }
WsBasicResource >> renderContentOn: html [

	(self renderTagOn: html)
		attributeAt: #integrity put: integrity;
		attributeAt: #crossorigin put: crossorigin
]

{ #category : #rendering }
WsBasicResource >> renderTagOn: html [

	self subclassResponsibility
]

{ #category : #accessing }
WsBasicResource >> url [

	^ url
]

{ #category : #accessing }
WsBasicResource >> url: anObject [

	url := anObject
]
