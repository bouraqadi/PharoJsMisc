Class {
	#name : #WsCompositeElement,
	#superclass : #WsElement,
	#traits : 'WsTCompositeElement',
	#classTraits : 'WsTCompositeElement classTrait',
	#category : #'WebSt-Base-Views'
}

{ #category : #'instance creation' }
WsCompositeElement class >> withAll: allChildren [
	^self new
		children: allChildren;
		yourself
]