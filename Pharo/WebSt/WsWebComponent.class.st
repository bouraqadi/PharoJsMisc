Class {
	#name : #WsWebComponent,
	#superclass : #WsHTMLElement,
	#traits : 'PjTDomController + WsTPageFactory',
	#classTraits : 'PjTDomController classTrait + WsTPageFactory classTrait',
	#instVars : [
		'view'
	],
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #'WebSt-WebComponents'
}

{ #category : #rendering }
WsWebComponent class >> externalResources [

	<pharoJsSkip>
	^ self viewFactoryClass externalResources, { WsJsResource url: 'index.js' }
]

{ #category : #rendering }
WsWebComponent class >> pageHtml [
<pharoJsSkip>
	^ self basicNew pageHtml
]

{ #category : #'class initialization' }
WsWebComponent class >> registerTag [
	window customElements define: self tagName with: self
]

{ #category : #rendering }
WsWebComponent class >> shadowHtml [
	self subclassResponsibility
]

{ #category : #'class initialization' }
WsWebComponent class >> tagName [
	self subclassResponsibility 
]

{ #category : #rendering }
WsWebComponent class >> title [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #rendering }
WsWebComponent class >> viewFactoryClass [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #accessing }
WsWebComponent >> document [
	^document
]

{ #category : #accessing }
WsWebComponent >> externalResources [

	^self class externalResources
]

{ #category : #accessing }
WsWebComponent >> html [
	^self class html
]

{ #category : #initialization }
WsWebComponent >> initModel [
	self subclassResponsibility 
]

{ #category : #initialization }
WsWebComponent >> initView [

	view := self attachShadow:
		        { (#mode -> self shadowEncapsulationMode) } asJsObject.
	view innerHTML: self shadowHtml.

]

{ #category : #initialization }
WsWebComponent >> initialize [

	super initialize.
	self initModel.
	self initView.

]

{ #category : #rendering }
WsWebComponent >> renderContentOn: html [
	html tag: self tagName
]

{ #category : #rendering }
WsWebComponent >> renderOn: aRenderer [

	aRenderer renderComponent: self
]

{ #category : #initialization }
WsWebComponent >> shadowEncapsulationMode [
	"Access from javaScript outside the root shadow dom is:
	- granted when returning 'open' 
	- denied when returning 'closed'. This option makes debugging challenging.
	See https://developer.mozilla.org/en-US/docs/Web/API/Element/attachShadow"

	^ 'open'
]

{ #category : #initialization }
WsWebComponent >> shadowHtml [
	^self class shadowHtml
]

{ #category : #rendering }
WsWebComponent >> tagName [
	^self class tagName
]

{ #category : #rendering }
WsWebComponent >> title [

	^self class title
]
