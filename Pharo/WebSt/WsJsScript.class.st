"
I represent an external JS file.
"
Class {
	#name : #WsJsScript,
	#superclass : #WsResource,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsJsScript >> renderTagOn: html [

	^ html script
		  defer;
		  type: 'text/javascript';
		  url: self url;
	  yourself
]
