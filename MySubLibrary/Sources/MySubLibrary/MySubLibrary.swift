//
//  MySubLibrary.swift
//  MySubLibrary
//
//  Created by Rémi BARDON on 04/02/2021.
//

import Foundation

public struct MySubLibrary {
	
	public static var helloWorld: String {
		return NSLocalizedString("HELLO_WORLD", bundle: .module, comment: "Hello world sentence")
	}
	
}
