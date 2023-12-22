Class {
	#name : #WsCompositeComponentTest,
	#superclass : #WsBootstrapComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCompositeComponentTest class >> appClass [

	^ WsAppForCompositeTest 
]

{ #category : #tests }
WsCompositeComponentTest >> assertBehavior [

	^self
]

{ #category : #tests }
WsCompositeComponentTest >> componentClasses [ 
	^super componentClasses , { WsLeafComponentForTest  }
]

{ #category : #tests }
WsCompositeComponentTest >> expectedTitle [

	^WsCompositeViewForTest name
]

{ #category : #tests }
WsCompositeComponentTest >> resourceHtmls [

	^#(  )
]
