//
//  MyView.swift
//  MyLibrary
//
//  Created by Rémi BARDON on 04/02/2021.
//

import SwiftUI
import MySubLibrary

struct MyView: View {
	
	private let text: String
	
	init(text: String) {
		self.text = text
	}
	
	var body: some View {
		VStack {
			Image("ok", bundle: .module)
			Text(text)
		}
	}
	
}

#if DEBUG
struct MyView_Previews: PreviewProvider {
	
	static var previews: some View {
		// This works
		//MyView(text: "This works")
		
		// This doesn't work
		MyView(text: MySubLibrary.helloWorld)
	}
	
}
#endif
