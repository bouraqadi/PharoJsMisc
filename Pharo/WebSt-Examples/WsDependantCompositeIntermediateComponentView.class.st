Class {
	#name : #WsDependantCompositeIntermediateComponentView,
	#superclass : #WsView,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsDependantCompositeIntermediateComponentView >> renderOuterHtmlOn: html [

	html paragraph: self className.
	2 timesRepeat: [ html render: WsDependantViewComponent ]
]
