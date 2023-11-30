Class {
	#name : #WsCompositeForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#instVars : [
		'child1',
		'child2'
	],
	#category : #'WebSt-Tests-Kernel'
}

{ #category : #accessing }
WsCompositeForTest >> child1 [

	^ child1
]

{ #category : #accessing }
WsCompositeForTest >> child1: anObject [

	child1 := anObject
]

{ #category : #accessing }
WsCompositeForTest >> child2 [

	^ child2
]

{ #category : #accessing }
WsCompositeForTest >> child2: anObject [

	child2 := anObject
]

{ #category : #initialization }
WsCompositeForTest >> initialize [ 
	super initialize.
	child1 := WsLeafComponentForTest new.
		child2 := WsLeafComponentForTest new.
]

{ #category : #rendering }
WsCompositeForTest >> renderContentOn: html [
	html div: [
		html
			render: child1;
			render: child2 ]
]
