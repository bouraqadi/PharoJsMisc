Class {
	#name : #WsHtmlPage,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactory + WsTResourceFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait + WsTResourceFactory classTrait',
	#instVars : [
		'head',
		'body'
	],
	#category : #'WebSt-Views'
}

{ #category : #adding }
WsHtmlPage >> addResource: aResource [

	self head addChild: aResource 
]

{ #category : #accessing }
WsHtmlPage >> body [

	^ body
]

{ #category : #accessing }
WsHtmlPage >> body: anObject [

	body := anObject
]

{ #category : #accessing }
WsHtmlPage >> head [

	^ head
]

{ #category : #accessing }
WsHtmlPage >> head: anObject [

	head := anObject
]

{ #category : #initialization }
WsHtmlPage >> initialize [

	super initialize.
	head := WsHtmlHead new.
	body := WsHtmlBody new
]

{ #category : #rendering }
WsHtmlPage >> pageHtml [

	^ self		  html
]

{ #category : #rendering }
WsHtmlPage >> renderContentOn: html [

	html
		renderDocType;
		tag: #html with: [
			html
				render: self head;
				render: self body ]
]

{ #category : #rendering }
WsHtmlPage >> renderOn: aRenderer [

	aRenderer renderPage: self
]

{ #category : #initialization }
WsHtmlPage >> rootView: aComponent [
	self body rootView: aComponent
]

{ #category : #initialization }
WsHtmlPage >> title: aString [
	self head title: aString
]
