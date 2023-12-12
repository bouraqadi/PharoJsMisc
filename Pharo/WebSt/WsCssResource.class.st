"
I represent an external CSS file.
"
Class {
	#name : #WsCssResource,
	#superclass : #WsBasicResource,
	#category : #'WebSt-Views'
}

{ #category : #initialization }
WsCssResource >> renderTagOn: html [

	^ html link
		beStylesheet;
		url: self url;
		yourself
]
