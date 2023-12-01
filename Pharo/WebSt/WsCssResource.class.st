"
I represent an external CSS file.
"
Class {
	#name : #WsCssResource,
	#superclass : #WsResource,
	#category : #'WebSt-Views'
}

{ #category : #initialization }
WsCssResource >> renderTagOn: html [

	^ html link
		beStylesheet;
		url: self url;
		yourself
]
