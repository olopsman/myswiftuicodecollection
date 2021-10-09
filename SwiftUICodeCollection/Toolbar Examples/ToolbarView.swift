//
//  ToolbarView.swift
//  SwiftUICodeCollection
//
//  Created by Paulo Orquillo on 7/10/21.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .toolbar {
                Text("Toolbar View")
            }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
