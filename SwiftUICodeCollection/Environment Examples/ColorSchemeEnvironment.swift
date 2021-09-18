//
//  ColorSchemeEnvironment.swift
//  SwiftUICodeCollection
//
//  Created by Paulo Orquillo on 28/08/21.
//

import SwiftUI

struct ColorSchemeEnvironment: View {
    @Environment(\.colorScheme) var colorScheme
    
    var title: LocalizedStringKey {
        switch colorScheme {
            case .dark: return "Dark"
            case .light: fallthrough
            @unknown default: return "Light"
        }
    }
    
    var systemImage: String {
        switch colorScheme {
        case .dark:
            return "moon"
        case .light:
            fallthrough
        @unknown default:
            return "sun.max"
        }
    }
    
    var body: some View {
        Label(title, systemImage: systemImage)
    }
}

struct ColorSchemeEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        ColorSchemeEnvironment()
            .preferredColorScheme(.light)
        ColorSchemeEnvironment()
            .preferredColorScheme(.dark)
    }
}
