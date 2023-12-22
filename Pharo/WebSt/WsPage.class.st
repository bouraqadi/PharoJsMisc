Class {
	#name : #WsPage,
	#superclass : #WsTagElement,
	#instVars : [
		'head',
		'body'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #'instance creation' }
WsPage class >> with: aView [ 
	^self new
		add: aView;
		yourself
]

{ #category : #adding }
WsPage >> add: aView [ 
	self body add: aView
]

{ #category : #accessing }
WsPage >> body [

	^ body
]

{ #category : #accessing }
WsPage >> head [

	^ head
]

{ #category : #initialization }
WsPage >> initialize [

	super initialize.
	head := WsHead new.
	body := WsBody new
]

{ #category : #rendering }
WsPage >> renderInnerHtmlOn: html [
 html render: head; 
	render: body.

]

{ #category : #rendering }
WsPage >> renderOuterHtmlOn: html [


html
		  html: '<!doctype html>'
. super renderOuterHtmlOn: html

]

{ #category : #accessing }
WsPage >> tag [
	^#html
]

{ #category : #accessing }
WsPage >> title: aString [

	self head title: aString
]
