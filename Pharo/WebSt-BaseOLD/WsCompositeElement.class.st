Class {
	#name : #WsCompositeElement,
	#superclass : #WsElement,
	#traits : 'WsTCompositeElement',
	#classTraits : 'WsTCompositeElement classTrait',
	#category : #'WebSt-BaseOLD-Views'
}

{ #category : #'instance creation' }
WsCompositeElement class >> withAll: allChildren [
	^self new
		addAll: allChildren;
		yourself
]
