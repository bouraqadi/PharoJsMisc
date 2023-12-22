Class {
	#name : #WsWebComponentOLD,
	#superclass : #WsHtmlElement,
	#traits : 'PjTDomController',
	#classTraits : 'PjTDomController classTrait',
	#instVars : [
		'view'
	],
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #'WebSt-WebComponents'
}

{ #category : #rendering }
WsWebComponentOLD class >> pageHtml [
<pharoJsSkip>
	^ self basicNew pageHtml
]

{ #category : #rendering }
WsWebComponentOLD class >> resources [

	<pharoJsSkip>
	^ self viewClass resources, { WsJsScript url: 'index.js' }
]

{ #category : #rendering }
WsWebComponentOLD class >> title [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #rendering }
WsWebComponentOLD class >> viewClass [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #accessing }
WsWebComponentOLD >> document [
	^document
]

{ #category : #accessing }
WsWebComponentOLD >> html [
	^self class html
]

{ #category : #accessing }
WsWebComponentOLD >> resources [

	^self class resources
]
