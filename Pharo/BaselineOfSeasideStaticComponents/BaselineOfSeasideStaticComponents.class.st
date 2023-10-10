Class {
	#name : #BaselineOfSeasideStaticComponents,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeasideStaticComponents
}

{ #category : #baselines }
BaselineOfSeasideStaticComponents >> baseline: spec [

	<baseline>
	spec baseline: 'Seaside3' with: [
		spec
			repository: 'github://SeasideSt/Seaside:master/';
			loads: #( 'Seaside-Pharo-Canvas' 'Seaside-Tests-Pharo-Canvas'
				   'Javascript-Pharo-Core' 'Javascript-Tests-Pharo-Core' ) ].

	spec
		package: 'Seaside-StaticComponents'
		with: [ spec requires: #( 'Seaside3' ) ];
		package: 'Seaside-StaticComponents-Tests'
		with: [ spec requires: #( 'Seaside3' 'Seaside-StaticComponents' ) ]
]
