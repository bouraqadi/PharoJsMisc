Class {
	#name : #WsDependantCompositeComponentApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #rendering }
WsDependantCompositeComponentApp class >> rootComponentClass [

	^WsDependantCompositeComponent 
]
