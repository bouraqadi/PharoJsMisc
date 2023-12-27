Trait {
	#name : #WsTCustomizedComponentApp,
	#instVars : [
		'rootComponent'
	],
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Base-Components'
}

{ #category : #rendering }
WsTCustomizedComponentApp classSide >> newPage [

	^ WsPage new
]

{ #category : #intializing }
WsTCustomizedComponentApp >> createRootComponent [

	rootComponent := self rootComponentClass new
]

{ #category : #intializing }
WsTCustomizedComponentApp >> displayRootComponent [

	self document body appendChild: rootComponent
]

{ #category : #intializing }
WsTCustomizedComponentApp >> initRootComponent [
	^self
]

{ #category : #intializing }
WsTCustomizedComponentApp >> start [

	super start.
	self createRootComponent.
	self initRootComponent.
	self displayRootComponent
]
