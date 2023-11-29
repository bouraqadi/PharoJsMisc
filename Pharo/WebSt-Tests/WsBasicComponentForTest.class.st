Class {
	#name : #WsBasicComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#instVars : [
		'message',
		'title'
	],
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsBasicComponentForTest >> message [

	^ message
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

	^ title 
]

{ #category : #accessing }
WsBasicComponentForTest >> title: anObject [

	title := anObject
]
