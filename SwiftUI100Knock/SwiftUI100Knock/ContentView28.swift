//
//  ContentView28.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/25.
//

import SwiftUI

struct ContentView28: View {
    @State private var contents = ["Apple", "Orange", "Grape"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(contents, id: \.self) { content in
                    NavigationLink(content) {
                        Apple()
                    }
                }
            }
        }
    }
}

struct Apple: View {
    var body: some View {
        Text("Apple")
    }
}

struct Orange: View {
    var body: some View {
        Text("Orange")
    }
}

struct Grape: View {
    var body: some View {
        Text("Grape")
    }
}

#Preview {
    ContentView28()
}
