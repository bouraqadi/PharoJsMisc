Class {
	#name : #WsCompositeViewForTest,
	#superclass : #WsView,
	#category : #'WebSt-Tests-Components'
}

{ #category : #rendering }
WsCompositeViewForTest >> renderContentOn: html [

	html render: WsLeafComponentForTest 
]
