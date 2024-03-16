Class {
	#name : #WsCompositeViewForTest,
	#superclass : #WsView,
	#category : #'WebSt-TestsOLD-Components'
}

{ #category : #rendering }
WsCompositeViewForTest >> renderContentOn: html [

	html render: WsLeafComponentForTest 
]
