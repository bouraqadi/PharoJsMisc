Trait {
	#name : #WsTDynamicComponentApp,
	#instVars : [
		'rootComponent'
	],
	#traits : 'WsTSingleComponentApp',
	#classTraits : 'WsTSingleComponentApp classTrait',
	#category : #'WebSt-Base-Components'
}

{ #category : #intializing }
WsTDynamicComponentApp >> createRootComponent [

	rootComponent := self rootComponentClass new
]

{ #category : #intializing }
WsTDynamicComponentApp >> displayRootComponent [

	self document body appendChild: rootComponent
]

{ #category : #intializing }
WsTDynamicComponentApp >> initRootComponent [
	^self
]

{ #category : #intializing }
WsTDynamicComponentApp >> start [

	self createRootComponent.
	self initRootComponent.
	self displayRootComponent
]
