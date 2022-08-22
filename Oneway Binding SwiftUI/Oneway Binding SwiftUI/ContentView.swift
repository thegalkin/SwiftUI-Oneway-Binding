//
//  ContentView.swift
//  Oneway Binding SwiftUI
//
//  Created by Никита Галкин on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isEnabled: Bool = false
    var body: some View {
        VStack {
            Toggle("", isOn: $isEnabled).labelsHidden()
            Text("Toggle is ") + Text("\(isEnabled ? "enabled" : "disabled" )").foregroundColor(textColor.wrappedValue)
        }
    }
    
    private var textColor: Binding<Color> {
        Binding {
            if isEnabled {
                return Color.green
            } else {
                return Color.red
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
