"
I represent an external JS file.
"
Class {
	#name : #WsJsResource,
	#superclass : #WsBasicResource,
	#category : #'WebSt-ViewsOLD'
}

{ #category : #initialization }
WsJsResource >> renderTagOn: html [

	^ html script
		  defer;
		  type: 'text/javascript';
		  url: self url;
	  yourself
]
