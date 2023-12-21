Class {
	#name : #WsPage,
	#superclass : #WsView,
	#instVars : [
		'head',
		'body'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #accessing }
WsPage >> body [

	^ body
]

{ #category : #accessing }
WsPage >> body: anObject [

	body := anObject
]

{ #category : #accessing }
WsPage >> head [

	^ head
]

{ #category : #accessing }
WsPage >> head: anObject [

	head := anObject
]

{ #category : #initialization }
WsPage >> initialize [

	super initialize.
	head := WsHead new.
	body := WsBody new
]

{ #category : #rendering }
WsPage >> renderContentOn: renderer [

	renderer
		html: '<!doctype html>'.
		super renderContentOn: renderer
]

{ #category : #rendering }
WsPage >> renderInnerHtmlOn: html [ 

	html render: self 
				head;
			render: self body
]

{ #category : #accessing }
WsPage >> tag [
	^#html
]
