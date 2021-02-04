@_private(sourceFile: "MyView.swift") import MyLibrary
import MySubLibrary
import SwiftUI
import SwiftUI

#if DEBUG
extension MyView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/remibardon/Documents/Swift/spm-resources-bug/MyLibrary/Sources/MyLibrary/MyView.swift", line: 36)
		// This works
		//MyView(text: "This works")
		
		// This doesn't work
		AnyView(__designTimeSelection(MyView(text: __designTimeSelection(MySubLibrary.helloWorld, "#7862.[3].[0].[0].[0].property.[0].[0].arg[0].value")), "#7862.[3].[0].[0].[0].property.[0].[0]"))
	#sourceLocation()
    }
}
#endif

extension MyView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/remibardon/Documents/Swift/spm-resources-bug/MyLibrary/Sources/MyLibrary/MyView.swift", line: 20)
		AnyView(__designTimeSelection(VStack {
			__designTimeSelection(Image(__designTimeString("#7862.[2].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "ok"), bundle: .module), "#7862.[2].[2].property.[0].[0].arg[0].value.[0]")
			__designTimeSelection(Text(__designTimeSelection(text, "#7862.[2].[2].property.[0].[0].arg[0].value.[1].arg[0].value")), "#7862.[2].[2].property.[0].[0].arg[0].value.[1]")
		}, "#7862.[2].[2].property.[0].[0]"))
	#sourceLocation()
    }
}

import struct MyLibrary.MyView