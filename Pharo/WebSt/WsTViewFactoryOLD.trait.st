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

{ #category : #'as yet unclassified' }
WsTViewFactoryOLD >> renderOn: aRenderer [

	aRenderer renderElement: self 
]

{ #category : #accessing }
WsTViewFactoryOLD >> resources [

	^ #(  )
]

{ #category : #accessing }
WsTViewFactoryOLD >> title [

	^ self class title
]
