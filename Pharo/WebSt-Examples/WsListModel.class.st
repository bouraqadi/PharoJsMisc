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
WsListModel >> add: item [
	items addLast: item.
	addPort notifyWithAll: { items size. item 	}
]

{ #category : #accessing }
WsListModel >> addAll: itemContents [

	itemContents do: [ :each | self add: each ]
]

{ #category : #initialization }
WsListModel >> initialize [ 
	super initialize .
	items := OrderedCollection new.
	addPort := HyCollectionPort notificationSelector: #handleAt:add:.
	removePort := HyCollectionPort notificationSelector: #handleAt:remove:.
	
]

{ #category : #accessing }
WsListModel >> items [

	^ items
]
