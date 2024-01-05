Extension { #name : #PjTCollection }

{ #category : #'*HydrogenComponentsJS' }
PjTCollection >> -@ anObject [
	"Copied Dirty!"
	^self collect: [ : each | each -@ anObject ]
]

{ #category : #'*HydrogenComponentsJS' }
PjTCollection >> => anObject [
	"Copied Dirty!"
	^self do: [ : each | each => anObject ]
]

{ #category : #'*HydrogenComponentsJS' }
PjTCollection >> addConnectionFromCollectionPort: aPort [
	"Method copied from sequenceableCollection. Dirty!"
	self do: [: each | each addConnectionFromCollectionPort: aPort]
]

{ #category : #'*HydrogenComponentsJS' }
PjTCollection >> asPortOf: anObject [
	"Copied Dirty!"
	^self collect: [: each | each asPortOf: anObject]
]

{ #category : #'*HydrogenComponentsJS' }
PjTCollection >> notificationSelector: aSymbol [
	"Copied Dirty!"
	^self do: [ : each | each notificationSelector: aSymbol ]
]

{ #category : #'*HydrogenComponentsJS' }
PjTCollection >> removeConnectionFromCollectionPort: aPort [
	"Method copied from sequenceableCollection. Dirty!"

	self do: [ :each | each removeConnectionFromCollectionPort: aPort ]
]
