Class {
	#name : #WsDependantCompositeComponentTest,
	#superclass : #WsDependantViewComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsDependantCompositeComponentTest class >> appClass [ 
	^WsDependantCompositeComponentApp 
]

{ #category : #tests }
WsDependantCompositeComponentTest >> shadowHtml [

	^ '<' , WsDependantViewComponent tagName , '></'
	  , WsDependantViewComponent tagName , '>'
]
