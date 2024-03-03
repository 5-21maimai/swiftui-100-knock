//
//  ContentView28.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/25.
//

import SwiftUI

enum Contents: CaseIterable {
    case apple
    case orange
    case grape
    
    var title: String {
        switch self {
        case .apple: "Apple"
        case .orange: "Orange"
        case .grape: "Grape"
        }
    }
}

struct ContentView28: View {

    var body: some View {
        NavigationStack {
            List {
                ForEach(Contents.allCases, id: \.self) { content in
                    NavigationLink(content.title) {
                        switch content {
                        case .apple: Apple()
                        case .orange: Orange()
                        case .grape: Grape()
                        }
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
