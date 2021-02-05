//
//  MySubLibraryTests.swift
//  MySubLibraryTests
//
//  Created by Rémi BARDON on 04/02/2021.
//

import XCTest
@testable import MySubLibrary

final class MySubLibraryTests: XCTestCase {
	
	func testExample() {
		XCTAssertEqual(
			MySubLibrary.helloWorld, "Bonjour le monde!",
			"Tests must be run in French language"
		)
	}
	
}
