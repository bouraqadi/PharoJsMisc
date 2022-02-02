Class {
	#name : #WcWebComponentsDemo,
	#superclass : #PjFileBasedWebApp,
	#category : #WebComponents
}

{ #category : #accessing }
WcWebComponentsDemo class >> appFolder [
	<pharoJsSkip>
	self == WcWebComponentsDemo ifTrue: [ ^super appFolder ].
	^WcWebComponentsDemo appFolder 
]

{ #category : #demo }
WcWebComponentsDemo class >> demo [
	<pharoJsSkip>
	
	self exportApp.
	WebBrowser openOn: self appFullHtmlFileName pathString 
]
