Class {
	#name : #WsPage,
	#superclass : #WsTagView,
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

	html render: self 
				head;
			render: self body
]

{ #category : #rendering }
WsPage >> renderOuterHtmlOn: renderer [

	renderer
		html: '<!doctype html>'.
		super renderOuterHtmlOn: renderer
]

{ #category : #accessing }
WsPage >> tag [
	^#html
]

{ #category : #accessing }
WsPage >> titleText: aString [

	self head titleText: aString
]
