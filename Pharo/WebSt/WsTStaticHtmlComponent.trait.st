Trait {
	#name : #WsTStaticHtmlComponent,
	#category : #'WebSt-Kernel'
}

{ #category : #exporting }
WsTStaticHtmlComponent classSide >> html [
	^WsHtmlRenderer render: self new
]

{ #category : #exporting }
WsTStaticHtmlComponent classSide >> htmlPage [

	^ WsHtmlPageRenderer render: self new
]

{ #category : #accessing }
WsTStaticHtmlComponent >> dependencies [
	^#()
]

{ #category : #initialization }
WsTStaticHtmlComponent >> loadScriptGeneratorClass [

	^ WANullScriptGenerator
]

{ #category : #rendering }
WsTStaticHtmlComponent >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTStaticHtmlComponent >> title [

	^ self className
]
