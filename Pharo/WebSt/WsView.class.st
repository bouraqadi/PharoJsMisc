Class {
	#name : #WsView,
	#superclass : #Object,
	#traits : 'WsTView',
	#classTraits : 'WsTView classTrait',
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsView >> renderContentOn: html [

	html
		tag: self tag
		with: [ self renderInnerHtmlOn: html ]
]

{ #category : #rendering }
WsView >> renderInnerHtmlOn: html [
	self subclassResponsibility 
]

{ #category : #rendering }
WsView >> renderOn: html [

	html renderView: self
]

{ #category : #accessing }
WsView >> tag [
	self subclassResponsibility 
]
