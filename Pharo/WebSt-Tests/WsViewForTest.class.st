Class {
	#name : #WsViewForTest,
	#superclass : #WsView,
	#traits : 'WsTResourceFactory',
	#classTraits : 'WsTResourceFactory classTrait',
	#instVars : [
		'resources',
		'message',
		'titleText'
	],
	#category : #'WebSt-Tests-Views'
}

{ #category : #accessing }
WsViewForTest >> addResource: aResource [
	self resources add: aResource
]

{ #category : #rendering }
WsViewForTest >> initialize [

	super initialize.
	resources := OrderedCollection new
]

{ #category : #accessing }
WsViewForTest >> message [

	^ message
]

{ #category : #accessing }
WsViewForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsViewForTest >> renderContentOn:  html [

	html paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsViewForTest >> resources [

	^ resources
]

{ #category : #accessing }
WsViewForTest >> title [

	^ titleText ifNil: [ super title ]
]

{ #category : #accessing }
WsViewForTest >> title: anObject [

	titleText := anObject
]
