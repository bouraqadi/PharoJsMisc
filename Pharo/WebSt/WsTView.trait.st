Trait {
	#name : #WsTView,
	#traits : 'WsTHtmlElement',
	#classTraits : 'WsTHtmlElement classTrait',
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTView classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #accessing }
WsTView >> addResource: aResource [
	self externalResources add: aResource
]

{ #category : #accessing }
WsTView >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
]

{ #category : #accessing }
WsTView >> externalResources [
	^#()
]

{ #category : #rendering }
WsTView >> pageHtml [

	^WsHtmlPage new 
		rootComponent: self;
	html
]

{ #category : #rendering }
WsTView >> renderOn: aRenderer [
	aRenderer renderComponent: self
]

{ #category : #accessing }
WsTView >> title [

	^ self className
]

{ #category : #accessing }
WsTView >> useCssAt: urlString [

	self addResourceClass: WsCssResource  url: urlString.

]

{ #category : #accessing }
WsTView >> useJsAt: urlString [

	self addResourceClass: WsJsResource url: urlString
]
