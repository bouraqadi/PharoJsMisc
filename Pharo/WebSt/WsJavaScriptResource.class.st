"
I represent an external JS file.
"
Class {
	#name : #WsJavaScriptResource,
	#superclass : #WsResource,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsJavaScriptResource >> setUpRoot: htmlRoot [ 
	htmlRoot javascript 
		defer;
		url: self url
]
