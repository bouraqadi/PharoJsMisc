Class {
	#name : #WsCompositeComponentTestOLD,
	#superclass : #WsComponentTestOLD,
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #'suite parameters' }
WsCompositeComponentTestOLD class >> appClass [

	^ WsAppForCompositeTest 
]

{ #category : #tests }
WsCompositeComponentTestOLD >> assertBehavior: component [

	^ self
]

{ #category : #tests }
WsCompositeComponentTestOLD >> componentClasses [ 
	^super componentClasses , { WsLeafComponentForTest  }
]
