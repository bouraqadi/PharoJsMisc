Class {
	#name : #WsView,
	#superclass : #WsElement,
	#category : #'WebSt-Base-Views'
}

{ #category : #accessing }
WsView class >> allGlobalResources [

	^ self new allGlobalResources
]

{ #category : #rendering }
WsView class >> renderOn: html [

	html render: self new
]

{ #category : #accessing }
WsView >> allGlobalResources [

	|renderer|
	renderer := self renderClass new.
	^renderer
		  render: self;
		  globalResources
]

{ #category : #rendering }
WsView >> renderOn: html [
	html renderView: self
]

{ #category : #rendering }
WsView >> renderOuterHtmlOn: html [

	html renderLocalResources
]

{ #category : #accessing }
WsView >> resources [

	^ #(  )
]
