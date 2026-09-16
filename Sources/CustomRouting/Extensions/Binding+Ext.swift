//
//  Binding+Ext.swift
//  ArchitectureBootcamp
//
//  Created by Oktay Tanrıkulu on 16.09.2026.
//

import SwiftUI

extension Binding where Value == Bool {
    
    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }

    }
    
}
