Class {
	#name : #WsCompositeViewForTest,
	#superclass : #Object,
	#traits : 'WsTViewFactory',
	#classTraits : 'WsTViewFactory classTrait',
	#instVars : [
		'child1',
		'child2'
	],
	#category : #'WebSt-Tests-Views'
}

{ #category : #accessing }
WsCompositeViewForTest >> child1 [

	^ child1
]

{ #category : #accessing }
WsCompositeViewForTest >> child1: anObject [

	child1 := anObject
]

{ #category : #accessing }
WsCompositeViewForTest >> child2 [

	^ child2
]

{ #category : #accessing }
WsCompositeViewForTest >> child2: anObject [

	child2 := anObject
]

{ #category : #initialization }
WsCompositeViewForTest >> initialize [ 
	super initialize.
	child1 := WsLeafViewForTest new.
		child2 := WsLeafViewForTest new.
]

{ #category : #rendering }
WsCompositeViewForTest >> renderContentOn: html [
	html div: [
		html
			render: child1;
			render: child2 ]
]
