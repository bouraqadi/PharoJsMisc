Trait {
	#name : #WsTViewFactoryOLD,
	#traits : 'WsTHtmlElementFactoryOLD',
	#classTraits : 'WsTHtmlElementFactoryOLD classTrait',
	#category : #'WebSt-ViewsOLD'
}

{ #category : #rendering }
WsTViewFactoryOLD classSide >> title [
	^self name
]

{ #category : #converting }
WsTViewFactoryOLD >> asTemplate [
	^WsTemplateViewFactory content: self
]

{ #category : #accessing }
WsTViewFactoryOLD >> externalResources [

	^ #(  )
]

{ #category : #'as yet unclassified' }
WsTViewFactoryOLD >> renderOn: aRenderer [

	aRenderer renderView: self 
]

{ #category : #accessing }
WsTViewFactoryOLD >> title [

	^ self class title
]
