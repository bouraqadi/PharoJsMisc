Class {
	#name : #WsResourceInstaller,
	#superclass : #Object,
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #'WebSt-BaseOLD-Components'
}

{ #category : #'instance creation' }
WsResourceInstaller class >> elementClass: elementClass url: url [
	| element |
	element := elementClass url: url.
	^self html: element html
]

{ #category : #'instance creation' }
WsResourceInstaller class >> html: htmlString [
	^self new
		html: htmlString
;
yourself
]

{ #category : #'instance creation' }
WsResourceInstaller class >> jsSource: url [

	^ self elementClass: WsJsScriptElement url: url
]

{ #category : #initialization }
WsResourceInstaller >> beSingleton [
	self shouldBeImplemented 
]

{ #category : #installing }
WsResourceInstaller >> installIn: aDomElement [
	self subclassResponsibility 
]
