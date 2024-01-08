Class {
	#name : #WsCounterListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #accessing }
WsCounterListApp class >> rootComponentClass [

	^ WsCounterListComponent
]

{ #category : #accessing }
WsCounterListApp class >> title [

	<pharoJsSkip>
	^ 'Counters - List WebST Example'
]

{ #category : #intializing }
WsCounterListApp >> initRootComponent [

	1 to: 5 do: [ : initialCount |
		 rootComponent addComponent: (WsCounterComponent count: initialCount) ]
]
