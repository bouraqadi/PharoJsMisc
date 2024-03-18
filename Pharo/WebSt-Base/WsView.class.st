Class {
	#name : #WsView,
	#superclass : #WsElement,
	#category : #'WebSt-Base-Views'
}

{ #category : #accessing }
WsView >> dependencies [

	^ #(  )
]

{ #category : #rendering }
WsView >> renderOn: html [

	self dependencies do: [ :each | html addResource: each ].
	html renderLocalResources.
	super renderOn: html
]
