"
I represent an external CSS file.
"
Class {
	#name : #WsCssLink,
	#superclass : #WsResource,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsCssLink >> renderTagOn: html [

	^ html link
		beStylesheet;
		url: self url;
		yourself
]
