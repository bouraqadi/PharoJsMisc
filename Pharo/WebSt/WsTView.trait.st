Trait {
	#name : #WsTView,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTView classSide >> html [

	^ self new html
]

{ #category : #rendering }
WsTView >> html [
^self renderClass render: self
]

{ #category : #rendering }
WsTView >> renderClass [

	^ WsRenderer
]

{ #category : #rendering }
WsTView >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTView >> renderOn: aRenderer [

	self explicitRequirement 
	
]

{ #category : #rendering }
WsTView >> rendererClass [ 
	^WsRendererOLD 
]
