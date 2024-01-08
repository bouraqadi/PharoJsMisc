Class {
	#name : #WsTextListExampleApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #accessing }
WsTextListExampleApp class >> rootComponentClass [

	^WsListComponent 
]

{ #category : #accessing }
WsTextListExampleApp class >> title [

	<pharoJsSkip>
	^ 'Robots - Text List WebST Example'
]

{ #category : #intializing }
WsTextListExampleApp >> initRootComponent [
		rootComponent addAll:
		#( 'Astro' 'Baymax' 'Chappie' 'Johnny-5' 'R2D2' 'Wall-E' )
	
]
