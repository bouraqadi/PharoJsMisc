Trait {
	#name : #WsTPharoJsComponent,
	#traits : 'WsTStaticHtmlComponent @ {#basicSetUpRoot:->#setUpRoot:}',
	#classTraits : 'WsTStaticHtmlComponent classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsTPharoJsComponent >> script [

	^ self explicitRequirement
]

{ #category : #initialization }
WsTPharoJsComponent >> setUpRoot: root [

	self basicSetUpRoot: root.
	root addScript: self script
]
