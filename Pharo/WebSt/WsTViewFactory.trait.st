Trait {
	#name : #WsTViewFactory,
	#traits : 'WsTHtmlElementFactory + WsTPageFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait + WsTPageFactory classTrait',
	#category : #'WebSt-Views'
}

{ #category : #accessing }
WsTViewFactory classSide >> externalResources [
	^#()
]

{ #category : #rendering }
WsTViewFactory classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #rendering }
WsTViewFactory classSide >> title [
	^self name
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
	^ self class externalResources
]

{ #category : #rendering }
WsTViewFactory >> renderOn: aRenderer [
	aRenderer renderView: self
]

{ #category : #accessing }
WsTViewFactory >> title [

	^ self class title
]

{ #category : #accessing }
WsTViewFactory >> useCssAt: urlString [

	self addResourceClass: WsCssResource  url: urlString.

]

{ #category : #accessing }
WsTViewFactory >> useJsAt: urlString [

	self addResourceClass: WsJsResource url: urlString
]
