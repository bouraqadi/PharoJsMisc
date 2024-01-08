Class {
	#name : #WsTextComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'accessing view' }
WsTextComponent class >> shadowHtml [

	^ ''
]

{ #category : #'class initialization' }
WsTextComponent class >> tagName [
	^'ws-text'
]

{ #category : #'instance creation' }
WsTextComponent class >> text: aString [
	^self new
		text: aString;
		yourself
]

{ #category : #'accessing view' }
WsTextComponent class >> title [

	^ 'Text'
]

{ #category : #rendering }
WsTextComponent class >> viewClass [

	<pharoJsSkip>
	^self
]

{ #category : #accessing }
WsTextComponent >> text: aString [
	view innerHTML: aString
]
