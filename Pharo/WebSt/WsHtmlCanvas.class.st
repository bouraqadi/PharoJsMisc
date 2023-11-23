Class {
	#name : #WsHtmlCanvas,
	#superclass : #WAHtmlCanvas,
	#category : #'WebSt-Kernel'
}

{ #category : #'instance creation' }
WsHtmlCanvas class >> builder [ 
	^self newBuilder
		  rootClass: self htmlRootClass;
		  documentClass: self htmlDocumentClass;
		  yourself
]

{ #category : #'instance creation' }
WsHtmlCanvas class >> htmlDocumentClass [
	^WAHtmlDocument
]

{ #category : #'instance creation' }
WsHtmlCanvas class >> htmlRootClass [
	^WAHtmlRoot
]

{ #category : #'instance creation' }
WsHtmlCanvas class >> newBuilder [
	^WsBuilder on: self
]
