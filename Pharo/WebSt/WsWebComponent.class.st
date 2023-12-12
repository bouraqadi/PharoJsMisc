Class {
	#name : #WsWebComponent,
	#superclass : #WsHTMLElement,
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

{ #category : #'accessing view' }
WsWebComponent class >> html [
	^String streamContents: [ : str|
		str << $<;
		<< self tagName ;
		<< '></';
		<< self tagName ;
<<$>		 ]
]

{ #category : #rendering }
WsWebComponent class >> pageHtml [
	^self viewFactoryClass pageHtml
]

{ #category : #'class initialization' }
WsWebComponent class >> registerTag [
	window customElements define: self tagName with: self
]

{ #category : #'accessing view' }
WsWebComponent class >> shadowHtml [
	self subclassResponsibility
]

{ #category : #'class initialization' }
WsWebComponent class >> tagName [
	self subclassResponsibility 
]

{ #category : #'accessing view' }
WsWebComponent class >> viewFactoryClass [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #accessing }
WsWebComponent >> document [
	^document
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
