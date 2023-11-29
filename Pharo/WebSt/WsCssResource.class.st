"
I represent an external CSS file.
"
Class {
	#name : #WsCssResource,
	#superclass : #WsResource,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsCssResource >> renderContentOn: html [

	html link
		beStylesheet;
		url: self url
]
