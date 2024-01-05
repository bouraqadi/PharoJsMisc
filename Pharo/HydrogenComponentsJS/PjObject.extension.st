Extension { #name : #PjObject }

{ #category : #'*HydrogenComponentsJS' }
PjObject >> -@ anObject [
	"Method copied from Object. Dirty!"
	^anObject asPortOf: self
]

{ #category : #'*HydrogenComponentsJS' }
PjObject >> addConnectionFromCollectionPort: aPort [
	"Method copied from Object. Dirty!"
	aPort add: self
]

{ #category : #'*HydrogenComponentsJS' }
PjObject >> removeConnectionFromCollectionPort: aPort [
	"Method copied from Object. Dirty!"

	aPort remove: self
]
