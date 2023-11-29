Class {
	#name : #WsHtmlHead,
	#superclass : #Object,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#instVars : [
		'children',
		'titleChild'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #accessing }
WsHtmlHead >> addChild: aChild [
	children add: aChild
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

	children do: [ :each | html renderHeadChild: each ]
]

{ #category : #rendering }
WsHtmlHead >> renderContentOn: html [

	html head: [ self renderChildrenOn: html ]
]

{ #category : #accessing }
WsHtmlHead >> title: aString [
	titleChild ifNil: [ self addTitle ].
	titleChild title: aString
]