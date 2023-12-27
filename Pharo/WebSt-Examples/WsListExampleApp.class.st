Class {
	#name : #WsListExampleApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTCustomizedComponentApp',
	#classTraits : 'WsTCustomizedComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #rendering }
WsListExampleApp class >> rootComponentClass [

	^WsListComponent 
]

{ #category : #rendering }
WsListExampleApp class >> title [

	<pharoJsSkip>
	^ 'Robots'
]

{ #category : #intializing }
WsListExampleApp >> initRootComponent [

	rootComponent addAll: #('R2D2' 'Wall-E' 'Astro' 'Baymax' 'Johnny 5')
]
