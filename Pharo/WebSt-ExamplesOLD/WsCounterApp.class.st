Class {
	#name : #WsCounterApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTStaticComponentAppOLD',
	#classTraits : 'WsTStaticComponentAppOLD classTrait',
	#category : #'WebSt-ExamplesOLD-Counter'
}

{ #category : #accessing }
WsCounterApp class >> rootComponentClass [

	^ WsCounterComponent
]
