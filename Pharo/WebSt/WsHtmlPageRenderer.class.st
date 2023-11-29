Class {
	#name : #WsHtmlPageRenderer,
	#superclass : #WsHtmlRenderer,
	#instVars : [
		'page'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsHtmlPageRenderer class >> render: aHtmlPage [

	^ self new
		  page: aHtmlPage;
		  render: aHtmlPage;
		 html
]

{ #category : #accessing }
WsHtmlPageRenderer >> page [

	^ page
]

{ #category : #accessing }
WsHtmlPageRenderer >> page: anObject [

	page := anObject
]

{ #category : #accessing }
WsHtmlPageRenderer >> pageHead [

	^self page head
]

{ #category : #rendering }
WsHtmlPageRenderer >> renderComponent: aComponent [

	self renderResources: aComponent externalResources.
	super renderComponent: aComponent 
]

{ #category : #rendering }
WsHtmlPageRenderer >> renderResources: resources [

	self pageHead addChildren: resources
]
