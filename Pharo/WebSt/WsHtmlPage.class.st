Class {
	#name : #WsHtmlPage,
	#superclass : #Object,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
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

{ #category : #initialization }
WsHtmlPage >> initialize [ 
	super initialize.
	head := WsHtmlHead new.
	body := WsHtmlBody new.
]

{ #category : #rendering }
WsHtmlPage >> renderContentOn: renderer [

	renderer
		renderDocType;
		tag: #html with: [
			renderer
				render: self head;
				render: self body ]
]
