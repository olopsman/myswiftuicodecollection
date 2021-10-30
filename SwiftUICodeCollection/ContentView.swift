//
//  ContentView.swift
//  SwiftUICodeCollection
//
//  Created by Paulo Orquillo on 28/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                StateToggleAnimation()
                ColorSchemeEnvironment()
                NavigationViewExamples()
                NavigationLink(destination: ToolbarView()) {
                    Label("Toolbar", systemImage: "folder")
                }
                NavigationLink(destination: ScrollViewExample()) {
                    Text("Scroll View Reader")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
