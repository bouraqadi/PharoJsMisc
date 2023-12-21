Class {
	#name : #WsHtmlPageOLD,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactoryOLD + WsTResourceFactory',
	#classTraits : 'WsTHtmlElementFactoryOLD classTrait + WsTResourceFactory classTrait',
	#instVars : [
		'head',
		'body'
	],
	#category : #'WebSt-ViewsOLD'
}

{ #category : #adding }
WsHtmlPageOLD >> addResource: aResource [

	self head addChild: aResource 
]

{ #category : #rendering }
WsHtmlPageOLD >> pageHtml [

	^ self		  html
]

{ #category : #'as yet unclassified' }
WsHtmlPageOLD >> renderOn: aRenderer [

	aRenderer renderPage: self
]

{ #category : #rendering }
WsHtmlPageOLD >> renderOuterHtmlOn: html [

	html
		renderDocType;
		tag: #html with: [
			html
				render: self head;
				render: self body ]
]

{ #category : #initialization }
WsHtmlPageOLD >> rootView: aComponent [
	self body rootView: aComponent
]

{ #category : #initialization }
WsHtmlPageOLD >> title: aString [
	self head title: aString
]
