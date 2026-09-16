//
//  AnyDestination.swift
//  ArchitectureBootcamp
//
//  Created by Oktay Tanrıkulu on 16.09.2026.
//

import SwiftUI

@MainActor
public struct AnyDestination: Hashable {
    
    let id = UUID().uuidString
    var destination: AnyView
    
    public init<T: View>(destination: T) {
        self.destination = AnyView(destination)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: borrowing AnyDestination, rhs: borrowing AnyDestination) -> Bool {
        return lhs.id == rhs.id
    }
    
}
