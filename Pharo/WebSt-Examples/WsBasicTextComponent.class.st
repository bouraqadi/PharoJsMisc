Class {
	#name : #WsBasicTextComponent,
	#superclass : #WsComponent,
	#traits : 'WsTConcreteComponent',
	#classTraits : 'WsTConcreteComponent classTrait',
	#category : #'WebSt-Examples-List'
}

{ #category : #'accessing view' }
WsBasicTextComponent class >> shadowHtml [

	^ ''
]

{ #category : #'class initialization' }
WsBasicTextComponent class >> tagName [
	^'ws-text'
]

{ #category : #'instance creation' }
WsBasicTextComponent class >> text: aString [
	^self new
		text: aString;
		yourself
]

{ #category : #'accessing view' }
WsBasicTextComponent class >> title [

	^ 'Text'
]

{ #category : #rendering }
WsBasicTextComponent class >> viewClass [

	<pharoJsSkip>
	^self
]

{ #category : #accessing }
WsBasicTextComponent >> text: aString [
	view innerHTML: aString
]
