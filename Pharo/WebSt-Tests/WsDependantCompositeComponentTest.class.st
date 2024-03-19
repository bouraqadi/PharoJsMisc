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
WsDependantCompositeComponentTest >> assertComponent [

	| subcomponents |
	super assertComponent.
	subcomponents := shadowRoot querySelectorAll: WsDependantCompositeIntermediateComponent tagName.
	subcomponents asLocalObject do: [ : each | self assertSubcomponent: each ].

]

{ #category : #tests }
WsDependantCompositeComponentTest >> assertSubcomponent: subcomponent [
	| subRoot |
	subRoot := subcomponent view.
	self assert: subRoot innerHTML equals: self subcomponentShadowHtml.
	
	
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

{ #category : #tests }
WsDependantCompositeComponentTest >> subcomponentShadowHtml [

	^ String streamContents: [ :str |
		  str
			  << '<link rel="stylesheet" href="viewCss"><p>';
			  << WsDependantCompositeIntermediateComponentView name;
			  << '</p>'.
		  2 timesRepeat: [
			  str
				  << '<p>';
				  << WsDependantViewComponent name;
				  << '</p>'.
			  ] ]
]
