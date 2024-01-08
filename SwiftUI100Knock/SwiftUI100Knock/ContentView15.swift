//
//  ContentView15.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/08.
//

import SwiftUI

struct ContentView15: View {
    @State private var showAlert = false

    var body: some View {
        Button("Tap Me!!!!") {
            showAlert = true
        }
        .alert(
            "title",
            isPresented: $showAlert
        ) {
            Button("Button1", role: .destructive) {
                
            }
        } message: {
            Text("message")
        }
    }
}

#Preview {
    ContentView15()
}
