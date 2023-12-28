Class {
	#name : #BaselineOfWebComponents,
	#superclass : #BaselineOf,
	#category : #BaselineOfWebComponents
}

{ #category : #baselines }
BaselineOfWebComponents >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'PharoJS'
			with: [ spec repository: 'github://PharoJS/PharoJS:pharo11' ];
			package: #WebComponents with: [ spec requires: 'PharoJS' ] ]
]
