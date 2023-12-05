Class {
	#name : #WsPharoJsClassForTest,
	#superclass : #PjMinimalWebApplication,
	#classInstVars : [
		'appJsFileName',
		'appJsSubFolder'
	],
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #'accessing - description' }
WsPharoJsClassForTest class >> appJsFileName [

	<pharoJsSkip>
	^ appJsFileName ifNil: [ ^super appJsFileName ]
]

{ #category : #accessing }
WsPharoJsClassForTest class >> appJsFileName: anObject [

	appJsFileName := anObject
]

{ #category : #'accessing - description' }
WsPharoJsClassForTest class >> appJsSubFolder [
	"Subclass might return, e.g. 'js' if you want the javascript to be in the js sub-directory. 
	Useful, when you need to access the app/project folder that is different from the JS folder as with PhoneGap."

	<pharoJsSkip>
	^ appJsSubFolder
]

{ #category : #accessing }
WsPharoJsClassForTest class >> appJsSubFolder: anObject [

	appJsSubFolder := anObject
]

{ #category : #initialization }
WsPharoJsClassForTest class >> reset [

	self
		appJsFileName: nil;
		appJsSubFolder: nil
]
