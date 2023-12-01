Class {
	#name : #WsCompositeResource,
	#superclass : #Object,
	#traits : 'WsTHtmlElement',
	#classTraits : 'WsTHtmlElement classTrait',
	#instVars : [
		'children'
	],
	#category : #'WebSt-Views'
}

{ #category : #'instance creation' }
WsCompositeResource class >> withAll: allChildren [
	^self new
		children: allChildren;
		yourself
]

{ #category : #accessing }
WsCompositeResource >> children [

	^ children
]

{ #category : #accessing }
WsCompositeResource >> children: anObject [

	children := anObject
]

{ #category : #rendering }
WsCompositeResource >> renderContentOn: html [

	children do: [ : each | html render: each ]
]
