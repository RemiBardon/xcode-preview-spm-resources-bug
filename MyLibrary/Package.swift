// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "MyLibrary",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_10),
	],
	products: [
		.library(
			name: "MyLibrary",
			targets: ["MyLibrary"]
		),
	],
	dependencies: [
		.package(path: "../MySubLibrary"),
	],
	targets: [
		.target(
			name: "MyLibrary",
			dependencies: [
				.product(name: "MySubLibrary", package: "MySubLibrary"),
			],
			resources: [
				.process("Resources"),
			]
		),
	]
)
