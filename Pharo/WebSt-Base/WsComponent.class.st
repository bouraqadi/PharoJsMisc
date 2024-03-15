Class {
	#name : #WsComponent,
	#superclass : #WsHtmlElement,
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #'WebSt-Base-Components'
}

{ #category : #'instance creation' }
WsComponent class >> new [
	"HTML element classes cannot be directly instantiated "

	^ document createElement: self tagName
]

{ #category : #'class initialization' }
WsComponent class >> registerTag [

	window customElements define: self tagName with: self 
]

{ #category : #rendering }
WsComponent class >> renderOn: html [

	<pharoJsSkip>
	html renderElement: self
]

{ #category : #rendering }
WsComponent class >> renderOuterHtmlOn: html [

	<pharoJsSkip>
	html tag: self tagName
]

{ #category : #'class initialization' }
WsComponent class >> tagName [

	self subclassResponsibility
]
