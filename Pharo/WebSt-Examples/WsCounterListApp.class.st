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

	5 timesRepeat: [ rootComponent addComponent: WsCounterComponent new ]
]
