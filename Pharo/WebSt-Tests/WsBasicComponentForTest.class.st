Class {
	#name : #WsBasicComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#instVars : [
		'message',
		'title',
		'externalResources'
	],
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsBasicComponentForTest >> externalResources [

	^ externalResources
]

{ #category : #accessing }
WsBasicComponentForTest >> externalResources: anObject [

	externalResources := anObject
]

{ #category : #initialization }
WsBasicComponentForTest >> initialize [

	super initialize.
	externalResources := OrderedCollection new
]

{ #category : #accessing }
WsBasicComponentForTest >> message [

	^ message ifNil: [ 'Nice message'. ]
]

{ #category : #accessing }
WsBasicComponentForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsBasicComponentForTest >> renderContentOn: html [

	html
		paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsBasicComponentForTest >> title [

	^ title ifNil: [ 'Default title' ]
]

{ #category : #accessing }
WsBasicComponentForTest >> title: anObject [

	title := anObject
]
