//
//  ContentView14.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/07.
//

import SwiftUI

struct ContentView14: View {
    @State private var showAlert = false

    var body: some View {
        Button("Tap Me!!!!") {
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("title"),
                message: Text("message"),
                primaryButton: .default(
                    Text("Button1"),
                    action: { }
                ),
                secondaryButton: .destructive(
                    Text("Button2"),
                    action: { }
                )
            )
        }
    }
        
}

#Preview {
    ContentView14()
}
