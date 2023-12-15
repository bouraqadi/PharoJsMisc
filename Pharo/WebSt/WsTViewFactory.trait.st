Trait {
	#name : #WsTViewFactory,
	#traits : 'WsTHtmlElementFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait',
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTViewFactory classSide >> title [
	^self name
]

{ #category : #converting }
WsTViewFactory >> asTemplate [
	^WsTemplateViewFactory content: self
]

{ #category : #accessing }
WsTViewFactory >> externalResources [

	^ #(  )
]

{ #category : #rendering }
WsTViewFactory >> renderOn: aRenderer [

	aRenderer renderView: self 
]

{ #category : #accessing }
WsTViewFactory >> title [

	^ self class title
]
