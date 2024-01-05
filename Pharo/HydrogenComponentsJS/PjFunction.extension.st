Extension { #name : #PjFunction }

{ #category : #'*HydrogenComponentsJS' }
PjFunction >> addConnectionFromCollectionPort: aPort [
	"Method copied from BlockClosure. Dirty!"	
	^HyAdapter from: aPort to: self.
]

{ #category : #'*HydrogenComponentsJS' }
PjFunction >> removeConnectionFromCollectionPort: aPort [
"Method copied from BlockClosure. Dirty!"

	^ aPort disconnectBlock: self
]
