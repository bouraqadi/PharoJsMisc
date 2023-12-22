Class {
	#name : #WsViewForTest,
	#superclass : #WsView,
	#instVars : [
		'resources',
		'message',
		'titleText'
	],
	#category : #'WebSt-Tests-Kernel'
}

{ #category : #accessing }
WsViewForTest >> addResource: aResource [
	self resources add: aResource
]

{ #category : #accessing }
WsViewForTest >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
]

{ #category : #initialization }
WsViewForTest >> initialize [

	super initialize.
	resources := OrderedCollection new
]

{ #category : #accessing }
WsViewForTest >> message [

	^ message
]

{ #category : #accessing }
WsViewForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsViewForTest >> renderContentOn:  html [

	html paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsViewForTest >> resources [

	^ resources
]

{ #category : #accessing }
WsViewForTest >> title [

	^ titleText ifNil: [ super title ]
]

{ #category : #accessing }
WsViewForTest >> title: anObject [

	titleText := anObject
]

{ #category : #accessing }
WsViewForTest >> useCssAt: urlString [

	self addResourceClass: WsCssLink  url: urlString.

]

{ #category : #accessing }
WsViewForTest >> useJsAt: urlString [

	self addResourceClass: WsJsScript url: urlString
]
