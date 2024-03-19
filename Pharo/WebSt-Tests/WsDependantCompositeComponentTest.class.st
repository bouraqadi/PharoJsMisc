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

	| subcomponentTag |
	subcomponentTag := WsDependantCompositeIntermediateComponent tagName.
	^ String streamContents: [ :str |
		  str
			  << '<p>';
			  << WsDependantCompositeComponentView name;
			  << '</p>'.
		  2 timesRepeat: [
			  str
				  << $<;
				  << subcomponentTag;
				  << '></';
				  << subcomponentTag;
				  << $> ] ]
]
