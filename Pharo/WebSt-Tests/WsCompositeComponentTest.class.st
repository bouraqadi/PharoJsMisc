Class {
	#name : #WsCompositeComponentTest,
	#superclass : #WsComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCompositeComponentTest class >> appClass [

	^ WsAppForCompositeTest 
]

{ #category : #tests }
WsCompositeComponentTest >> assertBehavior: component [

	^ self
]

{ #category : #tests }
WsCompositeComponentTest >> componentClasses [ 
	^super componentClasses , { WsLeafComponentForTest  }
]

{ #category : #tests }
WsCompositeComponentTest >> expectedTitle [

	^WsCompositeViewForTest name
]
