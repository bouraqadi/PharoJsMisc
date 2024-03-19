Class {
	#name : #WsDependantCompositeComponentView,
	#superclass : #WsView,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsDependantCompositeComponentView >> renderOuterHtmlOn: html [
	super renderOuterHtmlOn: html.
	html render: WsDependantViewComponent 
]
