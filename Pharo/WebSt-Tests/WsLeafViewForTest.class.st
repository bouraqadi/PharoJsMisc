Class {
	#name : #WsLeafViewForTest,
	#superclass : #WsViewForTest,
	#instVars : [
		'message',
		'title'
	],
	#category : #'WebSt-Tests-FactoryOLD'
}

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
