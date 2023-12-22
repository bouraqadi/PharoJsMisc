Class {
	#name : #WsLeafViewForTest,
	#superclass : #WsViewForTest,
	#instVars : [
		'message',
		'titleText'
	],
	#category : #'WebSt-Tests-Kernel'
}

{ #category : #accessing }
WsLeafViewForTest >> addResourceClass: resourceClass url: urlString [

	| aResource |
	aResource := resourceClass url: urlString.
	self addResource: aResource
]

{ #category : #accessing }
WsLeafViewForTest >> message [

	^ message
]

{ #category : #accessing }
WsLeafViewForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsLeafViewForTest >> renderContentOn:  html [

	html paragraph: [ html text: self message ]
]

{ #category : #accessing }
WsLeafViewForTest >> title [

	^ titleText ifNil: [ super title ]
]

{ #category : #accessing }
WsLeafViewForTest >> title: anObject [

	titleText := anObject
]

{ #category : #accessing }
WsLeafViewForTest >> useCssAt: urlString [

	self addResourceClass: WsCssLink  url: urlString.

]

{ #category : #accessing }
WsLeafViewForTest >> useJsAt: urlString [

	self addResourceClass: WsJsScript url: urlString
]
