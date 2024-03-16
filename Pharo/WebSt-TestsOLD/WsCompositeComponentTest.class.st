Class {
	#name : #WsCompositeComponentTest,
	#superclass : #WsComponentTestOLD,
	#category : #'WebSt-TestsOLD-Components'
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
