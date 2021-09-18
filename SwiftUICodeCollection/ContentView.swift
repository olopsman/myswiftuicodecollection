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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
