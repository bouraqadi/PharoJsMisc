Class {
	#name : #WsTextListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #accessing }
WsTextListApp class >> rootComponentClass [

	^ WsTextListComponent
]

{ #category : #accessing }
WsTextListApp class >> title [

	<pharoJsSkip>
	^ 'Robots - Text List WebST Example'
]

{ #category : #intializing }
WsTextListApp >> initRootComponent [

	rootComponent addAllContents:
		#( 'Astro' 'Baymax' 'Chappie' 'Johnny-5' 'R2D2' 'Wall-E' )
]
