Class {
	#name : #WsBasicTextListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #accessing }
WsBasicTextListApp class >> rootComponentClass [

	^ WsBasicTextListComponent
]

{ #category : #accessing }
WsBasicTextListApp class >> title [

	<pharoJsSkip>
	^ 'Robots - Text List WebST Example'
]

{ #category : #intializing }
WsBasicTextListApp >> initRootComponent [
		rootComponent addAll:
		#( 'Astro' 'Baymax' 'Chappie' 'Johnny-5' 'R2D2' 'Wall-E' )
	
]
