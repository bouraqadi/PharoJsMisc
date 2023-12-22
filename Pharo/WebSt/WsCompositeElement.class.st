Class {
	#name : #WsCompositeElement,
	#superclass : #WsElement,
	#traits : 'WsTCompositeElement',
	#classTraits : 'WsTCompositeElement classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #'instance creation' }
WsCompositeElement class >> withAll: allChildren [
	^self new
		children: allChildren;
		yourself
]
