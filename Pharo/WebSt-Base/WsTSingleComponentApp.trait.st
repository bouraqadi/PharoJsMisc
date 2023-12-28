Trait {
	#name : #WsTSingleComponentApp,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Base-Components'
}

{ #category : #description }
WsTSingleComponentApp classSide >> componentClasses [

	^ {self rootComponentClass}
]

{ #category : #rendering }
WsTSingleComponentApp classSide >> rootComponentClass [

	self explicitRequirement 
]

{ #category : #rendering }
WsTSingleComponentApp classSide >> title [

<pharoJsSkip>
	^ self rootComponentClass title
]

{ #category : #accessing }
WsTSingleComponentApp >> rootComponentClass [ 
	^self class rootComponentClass
]
