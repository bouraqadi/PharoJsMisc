Class {
	#name : #WsListModel,
	#superclass : #Object,
	#instVars : [
		'items',
		'addPort',
		'removePort'
	],
	#category : #'WebSt-Examples-List'
}

{ #category : #accessing }
WsListModel >> add: itemModel [
	items addLast: itemModel.
	addPort notifyWithAll: { items size. itemModel 	}
]

{ #category : #accessing }
WsListModel >> addAll: itemModels [

	itemModels do: [ :each | self add: each ]
]

{ #category : #initialization }
WsListModel >> initialize [

	super initialize.
	items := OrderedCollection new.
	addPort := HyCollectionPort new.
	removePort := HyCollectionPort notificationSelector:
		              #handleAt:remove:
]

{ #category : #accessing }
WsListModel >> itemAt: index [

	^ self items at: index
]

{ #category : #accessing }
WsListModel >> items [

	^ items
]
