//
//  ContentView26.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/11.
//

import SwiftUI


struct ContentView26: View {
    @State private var contents = ["Apple", "Orange", "Grape"]
    @State private var showAlert = false

    var body: some View {
        List {
            ForEach(contents, id: \.self) { content in
                Button {
                    self.showAlert = true
                } label: {
                    Text(content)
                        .foregroundColor(.black)
                }
            }
        }.alert(
            "title",
            isPresented: $showAlert
        ) {

        } message: {
            Text("message")
        }
    }
}

#Preview {
    ContentView26()
}
