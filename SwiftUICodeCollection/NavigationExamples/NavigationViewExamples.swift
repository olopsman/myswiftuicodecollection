//
//  NavigationViewExamples.swift
//  SwiftUICodeCollection
//
//  Created by Paulo Orquillo on 18/09/21.
//

import SwiftUI

struct NavigationViewExamples: View {
    @State var displayBindingNavigation: Bool = false
    var body: some View {
        NavigationLink(
            destination: Text("Title Destination"),
            label: {
                Text("Text Title Navigation")
            })
        NavigationLink("String Title Navigation", destination: Text("String Destination"))
        // displayBindingNavigation changes when display is shown
        NavigationLink(
            destination:
                Text("Destination \(String(displayBindingNavigation))"),
            isActive: $displayBindingNavigation,
            label: {
                Text("Navigate  \(String(displayBindingNavigation))")
            })
        // or toggle displayBindingNavigation to navigate
        Toggle(isOn: $displayBindingNavigation, label: {
            Text("Toggle Binding Navigation")
        })
    }
}

struct NavigationViewButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExamples()
    }
}
