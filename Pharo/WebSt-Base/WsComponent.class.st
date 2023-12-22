Class {
	#name : #WsComponent,
	#superclass : #WsHtmlElement,
	#traits : 'PjTDomController',
	#classTraits : 'PjTDomController classTrait',
	#instVars : [
		'view'
	],
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #'WebSt-Base-Components'
}

{ #category : #'class initialization' }
WsComponent class >> registerTag [
	window customElements define: self tagName with: self
]

{ #category : #rendering }
WsComponent class >> renderOn: aRenderer [

	<pharoJsSkip>
	aRenderer renderElement: self
]

{ #category : #rendering }
WsComponent class >> renderOuterHtmlOn: html [
<pharoJsSkip>

	html tag: self tagName
]

{ #category : #rendering }
WsComponent class >> shadowHtml [
	self subclassResponsibility
]

{ #category : #'class initialization' }
WsComponent class >> tagName [
	self subclassResponsibility 
]

{ #category : #rendering }
WsComponent class >> title [
<pharoJsSkip>
	^ self viewClass title
]

{ #category : #rendering }
WsComponent class >> viewClass [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #initialization }
WsComponent >> initModel [
	self subclassResponsibility 
]

{ #category : #initialization }
WsComponent >> initView [

	view := self attachShadow:
		        { (#mode -> self shadowEncapsulationMode) } asJsObject.
	view innerHTML: self shadowHtml.

]

{ #category : #initialization }
WsComponent >> initialize [

	super initialize.
	self initModel.
	self initView.

]

{ #category : #initialization }
WsComponent >> shadowEncapsulationMode [
	"Access from javaScript outside the root shadow dom is:
	- granted when returning 'open' 
	- denied when returning 'closed'. This option makes debugging challenging.
	See https://developer.mozilla.org/en-US/docs/Web/API/Element/attachShadow"

	^ 'open'
]

{ #category : #initialization }
WsComponent >> shadowHtml [
	^self class shadowHtml
]
