Trait {
	#name : #WsTResourceFactory,
	#category : #'WebSt-ViewsOLD'
}

{ #category : #adding }
WsTResourceFactory >> addResource: aResource [
	self explicitRequirement 
]

{ #category : #accessing }
WsTResourceFactory >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
]

{ #category : #accessing }
WsTResourceFactory >> useCssAt: urlString [

	self addResourceClass: WsCssResource  url: urlString.

]

{ #category : #accessing }
WsTResourceFactory >> useJsAt: urlString [

	self addResourceClass: WsJsResource url: urlString
]
