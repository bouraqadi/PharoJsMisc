Trait {
	#name : #WsTCompositeElement,
	#instVars : [
		'children'
	],
	#category : #'WebSt-BaseOLD-Views'
}

{ #category : #accessing }
WsTCompositeElement >> add: aChild [

	self children add: aChild
]

{ #category : #accessing }
WsTCompositeElement >> addAll: newChildren [

	self children add: newChildren
]

{ #category : #accessing }
WsTCompositeElement >> children [
	^children ifNil: [ children := OrderedCollection new ]
]

{ #category : #rendering }
WsTCompositeElement >> renderChildrenOn: html [

	self children do: [ :each | html render: each ]
]

{ #category : #rendering }
WsTCompositeElement >> renderOuterHtmlOn: html [

	self renderChildrenOn: html
]
