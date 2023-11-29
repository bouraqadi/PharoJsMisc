Trait {
	#name : #WsTComponent,
	#category : #'WebSt-Kernel'
}

{ #category : #exporting }
WsTComponent classSide >> html [
	^WsHtmlRenderer render: self new
]

{ #category : #exporting }
WsTComponent classSide >> htmlPage [

	^ WsHtmlPageRenderer render: self new
]

{ #category : #accessing }
WsTComponent >> dependencies [
	^#()
]

{ #category : #initialization }
WsTComponent >> loadScriptGeneratorClass [

	^ WANullScriptGenerator
]

{ #category : #rendering }
WsTComponent >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTComponent >> title [

	^ self className
]
