Trait {
	#name : #WsTBasicComponent,
	#category : #'WebSt-Kernel'
}

{ #category : #exporting }
WsTBasicComponent classSide >> html [

	^ self new html
]

{ #category : #exporting }
WsTBasicComponent >> html [
^self renderClass render: self
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
