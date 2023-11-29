Trait {
	#name : #WsTComponent,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #accessing }
WsTComponent >> dependencies [
	^#()
]

{ #category : #rendering }
WsTComponent >> title [

	^ self className
]
