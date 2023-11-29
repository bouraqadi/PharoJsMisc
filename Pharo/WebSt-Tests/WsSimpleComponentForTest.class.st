Class {
	#name : #WsSimpleComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#instVars : [
		'message'
	],
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsSimpleComponentForTest >> message [

	^ message
]

{ #category : #accessing }
WsSimpleComponentForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsSimpleComponentForTest >> renderContentOn: html [

	html
		paragraph: [ html text: self message ]
]
