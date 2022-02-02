Class {
	#name : #WcWebComponent,
	#superclass : #PjDomController,
	#instVars : [
		'view',
		'shadowDomRoot'
	],
	#category : #WebComponents
}

{ #category : #initializing }
WcWebComponent class >> buildWebComponent [
	WcComponentFactory buildWith: self.

]

{ #category : #initializing }
WcWebComponent class >> domClassName [ 
	^self name, 'DOM'

]

{ #category : #initializing }
WcWebComponent class >> javascriptInitialize [ 
	self allSubclassesDo: [ : each | each buildWebComponent ]  
]

{ #category : #initializing }
WcWebComponent class >> tagName [
	self subclassResponsibility 
]

{ #category : #'instance creation' }
WcWebComponent class >> view: aView [

	^ self
		  new
		  view: aView;
		  yourself
]

{ #category : #initializing }
WcWebComponent class >> viewInnerHTML [
	self subclassResponsibility 
]

{ #category : #initialization }
WcWebComponent >> initView [

	^self
]

{ #category : #accessing }
WcWebComponent >> view [

	^ view
]

{ #category : #accessing }
WcWebComponent >> view: aHTMLElement [

	view := aHTMLElement.
	shadowDomRoot := view shadowRoot.
	self initView
]
