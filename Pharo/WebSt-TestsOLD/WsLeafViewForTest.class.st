Class {
	#name : #WsLeafViewForTest,
	#superclass : #WsView,
	#traits : 'WsTResourceFactory',
	#classTraits : 'WsTResourceFactory classTrait',
	#instVars : [
		'resources',
		'message',
		'titleText'
	],
	#category : #'WebSt-TestsOLD-Views'
}

{ #category : #accessing }
WsLeafViewForTest >> addResource: aResource [
	self resources add: aResource
]

{ #category : #rendering }
WsLeafViewForTest >> initialize [

	super initialize.
	resources := OrderedCollection new
]

{ #category : #accessing }
WsLeafViewForTest >> message [

	^ message
]

{ #category : #accessing }
WsLeafViewForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsLeafViewForTest >> renderContentOn:  html [

	html paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsLeafViewForTest >> resources [

	^ resources
]

{ #category : #accessing }
WsLeafViewForTest >> title [

	^ titleText ifNil: [ super title ]
]

{ #category : #accessing }
WsLeafViewForTest >> title: anObject [

	titleText := anObject
]
