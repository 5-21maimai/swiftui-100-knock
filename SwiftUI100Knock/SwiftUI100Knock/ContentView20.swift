//
//  ContentView20.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/18.
//

import SwiftUI

struct ContentView20: View {
    @State private var shouldShowSecondView: Bool = false

    var body: some View {
        Button{
            shouldShowSecondView = true
        } label: {
            Text("Tap Me!!")
        }
        
        NavigationLink(
            destination: ContentView12(text: "SecondView"),
            isActive: $shouldShowSecondView
        ) {
            EmptyView()
        }
        
    }
}

#Preview {
    ContentView20()
}
