Class {
	#name : #BaselineOfSeasideStaticComponents,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeasideStaticComponents
}

{ #category : #baselines }
BaselineOfSeasideStaticComponents >> baseline: spec [

	<baseline>
	spec
		package: 'Seaside-Pharo-Canvas'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/' ];
		package: 'Javascript-Pharo-Core'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/' ];
		package: 'Seaside-Tests-Pharo-Canvas'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/' ];
		package: 'Javascript-Tests-Pharo-Core'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/' ].

	spec
		package: 'Seaside-StaticComponents'
		with: [
			spec requires: #( 'Seaside-Pharo-Canvas' 'Javascript-Pharo-Core' ) ];
		package: 'Seaside-StaticComponents-Tests' with: [
			spec requires:
					#( 'Seaside-Tests-Pharo-Canvas' 'Javascript-Tests-Pharo-Core' ) ]
]
