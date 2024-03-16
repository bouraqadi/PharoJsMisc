Class {
	#name : #WsComponentOLD,
	#superclass : #WsHtmlElement,
	#traits : 'PjTDomController',
	#classTraits : 'PjTDomController classTrait',
	#instVars : [
		'view'
	],
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #'WebSt-BaseOLD-Components'
}

{ #category : #dependencies }
WsComponentOLD class >> addAllComponentClassesTo: classes [

	<pharoJsSkip>
	(classes includes: self) ifTrue: [ ^self ].
	classes add: self.
	self subComponentClasses do: [ : each | each addAllComponentClassesTo: classes ]
]

{ #category : #dependencies }
WsComponentOLD class >> allComponentClasses [

	<pharoJsSkip>
	| classes |
	classes := IdentitySet new.
	self addAllComponentClassesTo: classes.
	^ classes asArray
]

{ #category : #'instance creation' }
WsComponentOLD class >> new [
"HTML element classes cannot be directly instantiated "
	^ document createElement: self tagName
]

{ #category : #'class initialization' }
WsComponentOLD class >> registerTag [
	window customElements define: self tagName with: self
]

{ #category : #rendering }
WsComponentOLD class >> renderOn: html [

	<pharoJsSkip>
	html renderElement: self
]

{ #category : #rendering }
WsComponentOLD class >> renderOuterHtmlOn: html [
<pharoJsSkip>

	html tag: self tagName
]

{ #category : #rendering }
WsComponentOLD class >> shadowHtml [
	self subclassResponsibility
]

{ #category : #dependencies }
WsComponentOLD class >> subComponentClasses [

	<pharoJsSkip>
	^ self viewClass referencedClasses select: [  :each | each inheritsFrom: WsComponentOLD ]
]

{ #category : #'class initialization' }
WsComponentOLD class >> tagName [
	self subclassResponsibility 
]

{ #category : #rendering }
WsComponentOLD class >> title [
<pharoJsSkip>
	^ self viewClass title
]

{ #category : #rendering }
WsComponentOLD class >> viewClass [

	<pharoJsSkip>
	self subclassResponsibility
]

{ #category : #accessing }
WsComponentOLD >> document [
^document
]

{ #category : #initialization }
WsComponentOLD >> initView [

	view innerHTML: self shadowHtml
]

{ #category : #initialization }
WsComponentOLD >> initialize [

	super initialize.
	self resetView.

]

{ #category : #initialization }
WsComponentOLD >> resetView [

	view ifNil: [
		view := self attachShadow:
			        { (#mode -> self shadowEncapsulationMode) } asJsObject ].
	self initView
]

{ #category : #initialization }
WsComponentOLD >> shadowEncapsulationMode [
	"Access from javaScript outside the root shadow dom is:
	- granted when returning 'open' 
	- denied when returning 'closed'. This option makes debugging challenging.
	See https://developer.mozilla.org/en-US/docs/Web/API/Element/attachShadow"

	^ 'open'
]

{ #category : #initialization }
WsComponentOLD >> shadowHtml [
	^self class shadowHtml
]
