Trait {
	#name : #WsTViewFactory,
	#traits : 'WsTHtmlElementFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait',
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTViewFactory classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #accessing }
WsTViewFactory >> addResource: aResource [
	self externalResources add: aResource
]

{ #category : #accessing }
WsTViewFactory >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
]

{ #category : #converting }
WsTViewFactory >> asTemplate [
	^WsTemplateViewFactory content: self
]

{ #category : #accessing }
WsTViewFactory >> externalResources [
	^#()
]

{ #category : #rendering }
WsTViewFactory >> pageHtml [

	^WsHtmlPage new 
		rootComponent: self;
	html
]

{ #category : #rendering }
WsTViewFactory >> renderOn: aRenderer [
	aRenderer renderView: self
]

{ #category : #accessing }
WsTViewFactory >> title [

	^ self className
]

{ #category : #accessing }
WsTViewFactory >> useCssAt: urlString [

	self addResourceClass: WsCssResource  url: urlString.

]

{ #category : #accessing }
WsTViewFactory >> useJsAt: urlString [

	self addResourceClass: WsJsResource url: urlString
]
