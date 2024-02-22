//
//  ContentView27.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/22.
//

import SwiftUI

protocol ContentView27Delegate {
    func chengeText(text: String)
}

struct ContentView27: View {
    @State private var text: String = "My Text"
    @State private var shouldShowSecondView: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                Text(text)
                Button {
                    shouldShowSecondView = true
                } label: {
                    Text("2nd View")
                }.navigationDestination(
                    isPresented: $shouldShowSecondView
                ) {
                    ContentView27Next(delegate: self)
                }
            }
        }
    }
}

extension ContentView27: ContentView27Delegate {
    func chengeText(text: String) {
        self.text = text
    }
}

#Preview {
    ContentView27()
}
