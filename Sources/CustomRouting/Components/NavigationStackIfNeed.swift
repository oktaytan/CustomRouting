//
//  NavigationStackIfNeed.swift
//  ArchitectureBootcamp
//
//  Created by Oktay Tanrıkulu on 16.09.2026.
//

import SwiftUI

struct NavigationStackIfNeed<Content: View>: View {
    
    @Binding var path: [AnyDestination]
    let addNavigationView: Bool
    @ViewBuilder var content: Content
    
    var body: some View {
        if addNavigationView {
            NavigationStack(path: $path) {
                content
                    .navigationDestination(for: AnyDestination.self) { value in
                        value.destination
                    }
            }
        } else {
            content
        }
    }
}
