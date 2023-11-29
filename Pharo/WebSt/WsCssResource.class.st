"
I represent an external CSS file.
"
Class {
	#name : #WsCssResource,
	#superclass : #WsResource,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsCssResource >> setUpRoot: htmlRoot [

	htmlRoot link beStylesheet; url: self url
]
