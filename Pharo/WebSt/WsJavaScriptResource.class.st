"
I represent an external JS file.
"
Class {
	#name : #WsJavaScriptResource,
	#superclass : #WsResource,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsJavaScriptResource >> renderContentOn: html [

	html script
		defer;
		type: 'text/javascript';
		url: self url
]
