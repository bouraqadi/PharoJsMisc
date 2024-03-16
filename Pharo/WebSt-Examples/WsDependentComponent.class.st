Class {
	#name : #WsDependentComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #'accessing view' }
WsDependentComponent class >> shadowHtml [ 
	^''
]

{ #category : #'class initialization' }
WsDependentComponent class >> tagName [

	^ 'ws-dependent'
]

{ #category : #initialization }
WsDependentComponent >> initView [

	^self
]
