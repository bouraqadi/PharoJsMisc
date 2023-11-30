Class {
	#name : #WsLeafComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#instVars : [
		'message',
		'title',
		'externalResources'
	],
	#category : #'WebSt-Tests-Kernel'
}

{ #category : #accessing }
WsLeafComponentForTest >> externalResources [

	^ externalResources
]

{ #category : #accessing }
WsLeafComponentForTest >> externalResources: anObject [

	externalResources := anObject
]

{ #category : #initialization }
WsLeafComponentForTest >> initialize [

	super initialize.
	externalResources := OrderedCollection new
]

{ #category : #accessing }
WsLeafComponentForTest >> message [

	^ message ifNil: [ 'Nice message'. ]
]

{ #category : #accessing }
WsLeafComponentForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsLeafComponentForTest >> renderContentOn: html [

	html
		paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsLeafComponentForTest >> title [

	^ title ifNil: [ 'Default title' ]
]

{ #category : #accessing }
WsLeafComponentForTest >> title: anObject [

	title := anObject
]
