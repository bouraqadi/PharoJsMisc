Class {
	#name : #WsLeafViewForTest,
	#superclass : #Object,
	#traits : 'WsTView',
	#classTraits : 'WsTView classTrait',
	#instVars : [
		'message',
		'title',
		'externalResources'
	],
	#category : #'WebSt-Tests-Views'
}

{ #category : #accessing }
WsLeafViewForTest >> externalResources [

	^ externalResources
]

{ #category : #accessing }
WsLeafViewForTest >> externalResources: anObject [

	externalResources := anObject
]

{ #category : #initialization }
WsLeafViewForTest >> initialize [

	super initialize.
	externalResources := OrderedCollection new
]

{ #category : #accessing }
WsLeafViewForTest >> message [

	^ message ifNil: [ 'Nice message'. ]
]

{ #category : #accessing }
WsLeafViewForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsLeafViewForTest >> renderContentOn: html [

	html
		paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsLeafViewForTest >> title [

	^ title ifNil: [ 'Default title' ]
]

{ #category : #accessing }
WsLeafViewForTest >> title: anObject [

	title := anObject
]
