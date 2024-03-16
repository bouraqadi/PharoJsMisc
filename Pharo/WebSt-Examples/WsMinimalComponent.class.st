Class {
	#name : #WsMinimalComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Minimal'
}

{ #category : #'accessing view' }
WsMinimalComponent class >> shadowHtml [ 
	^''
]

{ #category : #'class initialization' }
WsMinimalComponent class >> tagName [ 
	^'ws-minimal'
]

{ #category : #initialization }
WsMinimalComponent >> initView [

	^ self
]
