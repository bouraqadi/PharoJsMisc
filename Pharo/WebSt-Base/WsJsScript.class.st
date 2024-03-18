"
I represent an external JS file.
"
Class {
	#name : #WsJsScript,
	#superclass : #WsResource,
	#category : #'WebSt-Base-Views'
}

{ #category : #adding }
WsJsScript >> addTo: resourceManager [

	resourceManager addGlobalResource: self
]

{ #category : #initialization }
WsJsScript >> renderTagOn: html [

	^ html script
		  defer;
		  type: 'text/javascript';
		  url: self url;
	  yourself
]
