Trait {
	#name : #WsTComponent,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTComponent classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #accessing }
WsTComponent >> addResource: aResource [
	self externalResources add: aResource
]

{ #category : #accessing }
WsTComponent >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
]

{ #category : #accessing }
WsTComponent >> externalResources [
	^#()
]

{ #category : #exporting }
WsTComponent >> pageHtml [

	^WsHtmlPage new 
		rootComponent: self;
	html
]

{ #category : #rendering }
WsTComponent >> renderOn: aRenderer [
	aRenderer renderComponent: self
]

{ #category : #rendering }
WsTComponent >> title [

	^ self className
]

{ #category : #accessing }
WsTComponent >> useCssAt: urlString [

	self addResourceClass: WsCssResource  url: urlString.

]

{ #category : #accessing }
WsTComponent >> useJsAt: urlString [

	self addResourceClass: WsJavaScriptResource url: urlString
]
