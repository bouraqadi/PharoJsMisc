Trait {
	#name : #WsTSingleComponentApp,
	#traits : 'WsTComponentAppOLD',
	#classTraits : 'WsTComponentAppOLD classTrait',
	#category : #'WebSt-BaseOLD-Components'
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
