Class {
	#name : #WsTextListAppOLD,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-ExamplesOLD-List'
}

{ #category : #accessing }
WsTextListAppOLD class >> rootComponentClass [

	^ WsTextListComponentOLD
]

{ #category : #accessing }
WsTextListAppOLD class >> title [

	<pharoJsSkip>
	^ 'Robots - Text List WebST Example'
]

{ #category : #intializing }
WsTextListAppOLD >> initRootComponent [

	rootComponent addAllContents:
		#( 'Astro' 'Baymax' 'Chappie' 'Johnny-5' 'R2D2' 'Wall-E' )
]
