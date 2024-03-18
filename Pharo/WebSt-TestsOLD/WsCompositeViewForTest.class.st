Class {
	#name : #WsCompositeViewForTest,
	#superclass : #WsViewOLD,
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #rendering }
WsCompositeViewForTest >> renderContentOn: html [

	html render: WsLeafComponentForTest 
]
