Class {
	#name : #WsComponent,
	#superclass : #WsHtmlElement,
	#instVars : [
		'view'
	],
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

{ #category : #'accessing view' }
WsComponent class >> shadowHtml [

	self subclassResponsibility
]

{ #category : #'class initialization' }
WsComponent class >> tagName [

	self subclassResponsibility
]

{ #category : #accessing }
WsComponent class >> title [
	^self name
]

{ #category : #initialization }
WsComponent >> initView [
	self subclassResponsibility 
]

{ #category : #initialization }
WsComponent >> initialize [

	super initialize.
	self resetView
]

{ #category : #initialization }
WsComponent >> resetView [

	view ifNil: [
		view := self attachShadow:
			        { (#mode -> self shadowEncapsulationMode) } asJsObject ].
	self initView
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

	^ self class shadowHtml
]
