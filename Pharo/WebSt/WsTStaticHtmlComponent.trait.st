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

{ #category : #rendering }
WsTStaticHtmlComponent >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #initialization }
WsTStaticHtmlComponent >> scriptGeneratorClass [
	^WANullScriptGenerator
]

{ #category : #initialization }
WsTStaticHtmlComponent >> setUpRoot: root [

	root title: self title.
	root beHtml5.
	root meta charset: 'utf-8'
]

{ #category : #rendering }
WsTStaticHtmlComponent >> title [

	^ self className
]
