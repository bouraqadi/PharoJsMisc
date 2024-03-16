Class {
	#name : #WsToDoListApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTDynamicComponentApp',
	#classTraits : 'WsTDynamicComponentApp classTrait',
	#category : #'WebSt-ExamplesOLD-TodoList'
}

{ #category : #accessing }
WsToDoListApp class >> rootComponentClass [

	^WsToDoListComponent 
]

{ #category : #rendering }
WsToDoListApp class >> title [

	<pharoJsSkip>
	^ 'Shopping - ToDo List WebST Example'
]

{ #category : #intializing }
WsToDoListApp >> initRootComponent [

	rootComponent addAllContents:
		#( 'Bread' 'Peanut Butter' 'Soy Milk' 'Coffee' 'Sugar' 'Honey' 'Cereals'
		    'Strawberry Jam' )
]
