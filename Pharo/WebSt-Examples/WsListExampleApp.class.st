Class {
	#name : #WsListExampleApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'as yet unclassified' }
WsListExampleApp class >> rootComponentClass [

	^WsListComponent 
]

{ #category : #'as yet unclassified' }
WsListExampleApp class >> title [

	<pharoJsSkip>
	^ 'Robots'
]

{ #category : #intializing }
WsListExampleApp >> initRootComponent [
		rootComponent addAll:
		#( 'Astro' 'Baymax' 'Chappie' 'Johnny-5' 'R2D2' 'Wall-E' )
	
]
