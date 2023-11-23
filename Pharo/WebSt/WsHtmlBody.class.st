Class {
	#name : #WsHtmlBody,
	#superclass : #WAPainter,
	#instVars : [
		'htmlString'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #'instance creation' }
WsHtmlBody class >> on: aString [
	^self new 
		htmlString: aString;
		yourself
]

{ #category : #accessing }
WsHtmlBody >> htmlString: aString [
	htmlString := aString
]

{ #category : #rendering }
WsHtmlBody >> renderContentOn: aRenderer [
	aRenderer html: htmlString
]
