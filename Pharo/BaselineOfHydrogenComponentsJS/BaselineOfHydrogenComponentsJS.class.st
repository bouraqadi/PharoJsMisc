Class {
	#name : #BaselineOfHydrogenComponentsJS,
	#superclass : #BaselineOf,
	#category : #BaselineOfHydrogenComponentsJS
}

{ #category : #baselines }
BaselineOfHydrogenComponentsJS >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'PharoJS' with: [
				spec repository: 'github://PharoJS/PharoJS:pharo9' ];
			baseline: 'HydrogenComponents' with: [
				spec repository: 'github://bouraqadi/Components' ].
		spec 
			package: 'HydrogenComponentsJS' with: [
				spec requires: #('PharoJS' 'HydrogenComponents')].
	]
]
