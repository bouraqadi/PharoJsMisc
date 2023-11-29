Trait {
	#name : #WsTComponent,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #exporting }
WsTComponent classSide >> htmlPage [

	^ WsHtmlPageRendererOLD render: self new
]

{ #category : #accessing }
WsTComponent >> dependencies [
	^#()
]

{ #category : #rendering }
WsTComponent >> title [

	^ self className
]
