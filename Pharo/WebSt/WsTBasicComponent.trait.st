Trait {
	#name : #WsTBasicComponent,
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTBasicComponent classSide >> html [

	^ self new html
]

{ #category : #rendering }
WsTBasicComponent classSide >> pageHtml [

	^ self new pageHtml
]

{ #category : #exporting }
WsTBasicComponent >> html [
^self renderClass render: self
]

{ #category : #exporting }
WsTBasicComponent >> pageHtml [

	| page |
	page := WsHtmlPage rootComponent: self.
	^ page html
]

{ #category : #exporting }
WsTBasicComponent >> renderClass [
	^WsHtmlRenderer
]

{ #category : #rendering }
WsTBasicComponent >> renderContentOn: html [

	^ self explicitRequirement 
]

{ #category : #rendering }
WsTBasicComponent >> renderOn: aRenderer [
	self renderContentOn: aRenderer
]
