Class {
	#name : #WsHtmlHead,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait',
	#instVars : [
		'children',
		'titleChild'
	],
	#category : #'WebSt-Views'
}

{ #category : #accessing }
WsHtmlHead >> addChild: aChild [
	children add: aChild
]

{ #category : #accessing }
WsHtmlHead >> addChildren: childrenCollection [

	childrenCollection do: [:each | self addChild: each]
]

{ #category : #accessing }
WsHtmlHead >> addMeta: aBlock [

	| meta |
	meta := WAMetaElement new.
	aBlock value: meta.
	self addChild: meta
]

{ #category : #accessing }
WsHtmlHead >> addTitle [
	titleChild := WsHtmlTitle new.
	self addChild: titleChild 
]

{ #category : #initialization }
WsHtmlHead >> initialize [

	super initialize.
	children := OrderedCollection new.
	self addMeta: [ : meta| meta charset: 'utf-8']
]

{ #category : #rendering }
WsHtmlHead >> renderChildrenOn: html [

	children do: [ :each | html render: each ]
]

{ #category : #rendering }
WsHtmlHead >> renderContentOn: html [

	html head: [ self renderChildrenOn: html ]
]

{ #category : #accessing }
WsHtmlHead >> title: aString [

aString ifNil: [ ^self ].
	titleChild ifNil: [ self addTitle ].
	titleChild title: aString
]
