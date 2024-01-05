Extension { #name : #PjString }

{ #category : #'*HydrogenComponentsJS' }
PjString >> asPortOf: anObject [
	"Copied Dirty"
	^anObject instVarNamed: self
]
