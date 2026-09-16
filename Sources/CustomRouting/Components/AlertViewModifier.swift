//
//  AlertViewModifier.swift
//  ArchitectureBootcamp
//
//  Created by Oktay Tanrıkulu on 16.09.2026.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func showCustomAlert(type: AlertType = .alert, alert: Binding<AnyAppAlert?>) -> some View {
        let title = alert.wrappedValue?.title ?? ""
        let buttons = { alert.wrappedValue?.buttons() }
        let isPresented = Binding(ifNotNil: alert)
        
        switch type {
        case .alert:
            self.alert(title, isPresented: isPresented, actions: buttons, message: {
                if let subtitle = alert.wrappedValue?.subtitle {
                    Text(subtitle)
                }
            })
        case .confirmationDialog:
            self.confirmationDialog(alert.wrappedValue?.title ?? "", isPresented: isPresented,
                    actions: buttons, message: {
                if let subtitle = alert.wrappedValue?.subtitle {
                    Text(subtitle)
                }
            })
        }
    }
    
}
