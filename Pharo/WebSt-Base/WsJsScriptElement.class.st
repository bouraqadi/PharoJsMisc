"
I represent an external JS file.
"
Class {
	#name : #WsJsScriptElement,
	#superclass : #WsResourceElement,
	#category : #'WebSt-Base-Views'
}

{ #category : #initialization }
WsJsScriptElement >> renderTagOn: html [

	^ html script
		  defer;
		  type: 'text/javascript';
		  url: self url;
	  yourself
]
