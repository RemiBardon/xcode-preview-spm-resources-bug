// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "MySubLibrary",
	defaultLocalization: "en",
	products: [
		.library(
			name: "MySubLibrary",
			targets: ["MySubLibrary"]
		),
	],
	targets: [
		.target(
			name: "MySubLibrary",
			resources: [
				.process("Resources/Strings"),
			]
		),
		.testTarget(
			name: "MySubLibraryTests",
			dependencies: ["MySubLibrary"]
		),
	]
)
