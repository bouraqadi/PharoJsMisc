Class {
	#name : #WsCounterListAppOLD,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #accessing }
WsCounterListAppOLD class >> rootComponentClass [

	^ WsCounterListComponentOLD
]

{ #category : #accessing }
WsCounterListAppOLD class >> title [

	<pharoJsSkip>
	^ 'Counters - List WebST Example'
]

{ #category : #intializing }
WsCounterListAppOLD >> initRootComponent [

		rootComponent addAllContents: (1 to: 5)
]
