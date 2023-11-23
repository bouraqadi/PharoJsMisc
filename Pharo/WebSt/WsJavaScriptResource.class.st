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
