Trait {
	#name : #WsTJsComponent,
	#traits : 'WsTStaticHtmlComponent @ {#basicSetUpRoot:->#setUpRoot:}',
	#classTraits : 'WsTStaticHtmlComponent classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTJsComponent >> javaScriptUrl [

	^ self explicitRequirement
]

{ #category : #initialization }
WsTJsComponent >> setUpRoot: root [

	self basicSetUpRoot: root.
	root javascript
		defer;
		url: self javaScriptUrl
]
