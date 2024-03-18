Class {
	#name : #WsDependencyApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #accessing }
WsDependencyApp class >> rootComponentClass [ 
	^WsDependantComponent 
]
