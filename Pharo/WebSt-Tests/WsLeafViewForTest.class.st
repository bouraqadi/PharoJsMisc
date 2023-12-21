Class {
	#name : #WsLeafViewForTest,
	#superclass : #WsViewForTest,
	#instVars : [
		'message',
		'titleText'
	],
	#category : #'WebSt-Tests-Factory'
}

{ #category : #accessing }
WsLeafViewForTest >> message [

	^ message
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
WsLeafViewForTest >> titleText [

	^ titleText ifNil: [ super titleText ]
]

{ #category : #accessing }
WsLeafViewForTest >> titleText: anObject [

	titleText := anObject
]
