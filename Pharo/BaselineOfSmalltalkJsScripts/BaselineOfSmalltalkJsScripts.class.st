Class {
	#name : 'BaselineOfSmalltalkJsScripts',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSmalltalkJsScripts',
	#package : 'BaselineOfSmalltalkJsScripts'
}

{ #category : 'baselines' }
BaselineOfSmalltalkJsScripts >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'PharoJS' with: [
				spec repository: 'github://PharoJS/PharoJS:pharo12' ].
		spec 
			package: 'SmalltalkJsScripts' with: [
				spec requires: #('PharoJS')].
	]
]
