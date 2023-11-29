Class {
	#name : #WsHtmlPage,
	#superclass : #Object,
	#instVars : [
		'head',
		'body'
	],
	#category : #'WebSt-Kernel'
}

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

{ #category : #rendering }
WsHtmlPage >> html [

	| bodyRenderer pageRenderer |
	bodyRenderer := WsResourceAwareHtmlRenderer new.
	bodyRenderer render: self body.
	self head title: self body title.
	self head addChildren: bodyRenderer resources.
	pageRenderer := WsHtmlRenderer new.
	pageRenderer
		renderDocType;
		tag: #html with: [
			pageRenderer
				render: self head;
				html: bodyRenderer html ].
	^ pageRenderer html
]

{ #category : #initialization }
WsHtmlPage >> initialize [

	super initialize.
	head := WsHtmlHead new.
	body := WsHtmlBody new
]

{ #category : #initialization }
WsHtmlPage >> rootComponent: aComponent [
	self body rootComponent: aComponent
]
