//
//  ContentView19.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/14.
//

import SwiftUI

struct ContentView19: View {
    @State var text = ""
    @State private var showAlert = false
    @State private var showSheet = false

    var body: some View {
        VStack {
            TextField("Input Nubmer", text: $text)
            Button("Show Sheet") {
                if let double = Double(text) {
                    showSheet = true
                    showAlert = false
                } else {
                    showAlert = true
                    showSheet = false
                }
            }
            .alert(
                "Error",
                isPresented: $showAlert
            ) {
                Button("Close", role: .cancel) {}
            } message: {
                Text("数字を入力してください")
            }
            .sheet(isPresented: $showSheet) {
                Text("\(text) can convert to Double")
            }
        }.padding()
    }
}

#Preview {
    ContentView19()
}
