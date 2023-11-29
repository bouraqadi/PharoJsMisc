Class {
	#name : #WsCompositeForTest,
	#superclass : #Object,
	#traits : 'WsTComponentOLD',
	#classTraits : 'WsTComponentOLD classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #rendering }
WsCompositeForTest >> renderContentOn: html [

	| child1 child2 |
	child1 := WsLeafComponentForTest new.
	child1 message: 'Welcome!'.
	child2 := WsLeafComponentForTest new.
	child2 message: 'What a surprize!!!'.
	html div: [
		html heading
			level2;
			with: 'Child 1'.
		html render: child1.
		html heading
			level2;
			with: 'Child 2'.
		html render: child2 ]
]
