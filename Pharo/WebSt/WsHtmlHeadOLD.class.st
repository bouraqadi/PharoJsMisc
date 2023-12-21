Class {
	#name : #WsHtmlHeadOLD,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactoryOLD',
	#classTraits : 'WsTHtmlElementFactoryOLD classTrait',
	#instVars : [
		'children',
		'titleChild'
	],
	#category : #'WebSt-ViewsOLD'
}

{ #category : #accessing }
WsHtmlHeadOLD >> addChildren: childrenCollection [

	childrenCollection do: [:each | self addChild: each]
]

{ #category : #initialization }
WsHtmlHeadOLD >> initialize [

	super initialize.
	children := OrderedCollection new.
	self addMeta: [ : meta| meta charset: 'utf-8']
]

{ #category : #rendering }
WsHtmlHeadOLD >> renderChildrenOn: html [

	children do: [ :each | html render: each ]
]

{ #category : #'as yet unclassified' }
WsHtmlHeadOLD >> renderOn: aRenderer [

	aRenderer renderHead: self
]

{ #category : #rendering }
WsHtmlHeadOLD >> renderOuterHtmlOn: html [

	html head: [ self renderChildrenOn: html ]
]
