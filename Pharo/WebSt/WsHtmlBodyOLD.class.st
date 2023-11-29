Class {
	#name : #WsHtmlBodyOLD,
	#superclass : #WAPainter,
	#instVars : [
		'htmlString'
	],
	#category : #'WebSt-KernelOLDOLD'
}

{ #category : #'instance creation' }
WsHtmlBodyOLD class >> on: aString [
	^self new 
		htmlString: aString;
		yourself
]

{ #category : #accessing }
WsHtmlBodyOLD >> htmlString: aString [
	htmlString := aString
]

{ #category : #rendering }
WsHtmlBodyOLD >> renderContentOn: aRenderer [
	aRenderer html: htmlString
]
