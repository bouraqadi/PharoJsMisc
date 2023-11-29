Trait {
	#name : #WsTComponentOLD,
	#category : #'WebSt-KernelOLDOLD'
}

{ #category : #exporting }
WsTComponentOLD classSide >> html [
	^WsHtmlRendererOLD render: self new
]

{ #category : #exporting }
WsTComponentOLD classSide >> htmlPage [

	^ WsHtmlPageRendererOLD render: self new
]

{ #category : #accessing }
WsTComponentOLD >> externalResources [
	^#()
]

{ #category : #initialization }
WsTComponentOLD >> loadScriptGeneratorClass [

	^ WANullScriptGenerator
]

{ #category : #rendering }
WsTComponentOLD >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTComponentOLD >> title [

	^ self className
]
