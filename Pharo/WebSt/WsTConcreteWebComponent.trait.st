Trait {
	#name : #WsTConcreteWebComponent,
	#category : #'WebSt-WebComponents'
}

{ #category : #'accessing view' }
WsTConcreteWebComponent classSide >> htmlString_jsGenerator: transpiler [

	<pharoJsSkip>
	^ 'return ', self viewFactoryClass html printString
]

{ #category : #'class initialization' }
WsTConcreteWebComponent classSide >> javascriptInitialize [

	self  registerTag
]

{ #category : #'accessing view' }
WsTConcreteWebComponent classSide >> shadowHtml [

	<jsGenerator: #htmlString_jsGenerator:>
	^ nil
]
