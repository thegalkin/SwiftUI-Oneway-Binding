//
//  Binding.swift
//  Oneway Binding SwiftUI
//
//  Created by Никита Галкин on 23.08.2022.
//

import SwiftUI

public extension Binding {
    init(getter: @escaping () -> Value) {
        self.init(
            get: { getter() },
            set: { (_:Value) in }
        )
    }
}
