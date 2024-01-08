//
//  ContentView16.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/08.
//

import SwiftUI

enum AlertType {
    case first
    case second
    
    var title: String {
        switch self {
        case .first:
            return "Alert1"
        case .second:
            return "Alert2"
        }
    }
    
    var message: String {
        switch self {
        case .first:
            return "message1"
        case .second:
            return "message2"
        }
    }
}

struct ContentView16: View {
    @State private var showAlert = false
    @State private var alertType: AlertType = .first

    var body: some View {
        VStack {
            Button("Button1") {
                alertType = .first
                showAlert = true
            }
            Button("Button2") {
                alertType = .second
                showAlert = true
            }
            .alert(
                alertType.title,
                isPresented: $showAlert
            ) {
                Button("Close", role: .cancel) {
                    
                }
            } message: {
                Text(alertType.message)
            }
        }
        
    }
}

#Preview {
    ContentView16()
}
