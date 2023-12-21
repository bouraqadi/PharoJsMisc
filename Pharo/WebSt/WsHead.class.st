Class {
	#name : #WsHead,
	#superclass : #WsPageElement,
	#instVars : [
		'title'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #accessing }
WsHead >> addMeta: aBlock [

	| meta |
	meta := WAMetaElement new.
	aBlock value: meta.
	self add: meta
]

{ #category : #initialization }
WsHead >> initialize [

	super initialize.
	self addMeta: [ :meta | meta charset: 'utf-8' ].
	title := WsTitle new.
	self add: title
]

{ #category : #accessing }
WsHead >> tag [
	^#head
]

{ #category : #accessing }
WsHead >> titleText: aString [

	title text: aString
]
