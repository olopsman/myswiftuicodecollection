//
//  StateToggleAnimation.swift
//  SwiftUICodeCollection
//
//  Created by Paulo Orquillo on 28/08/21.
//

import SwiftUI

/*
In UIKit, views are objects, and objects have inherent identity . This means that two objects are equal if they are the same object. UIKit relies on the identity of an object to animate changes.

 In SwiftUI, views are structs — value types — which means that they don't have identity. For SwiftUI to animate changes, it needs to compare the value of the view before the animation started and the value of the view after the animation ends. SwiftUI then interpolates between the two values.
 
 
 */

struct StateToggleAnimation: View {
    @State var myState = false
    var body: some View {
        VStack {
            Toggle("Toggle Animation", isOn: $myState.animation())
            Rectangle()
                .frame(width: myState ? 20 : nil)
                .foregroundColor(.blue)
        }

    }
}

struct StateToggleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        StateToggleAnimation()
    }
}
