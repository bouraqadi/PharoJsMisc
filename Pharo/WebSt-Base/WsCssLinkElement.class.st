"
I represent an external CSS file.
"
Class {
	#name : #WsCssLinkElement,
	#superclass : #WsResourceElement,
	#category : #'WebSt-Base-Views'
}

{ #category : #initialization }
WsCssLinkElement >> renderTagOn: html [

	^ html link
		beStylesheet;
		url: self url;
		yourself
]
