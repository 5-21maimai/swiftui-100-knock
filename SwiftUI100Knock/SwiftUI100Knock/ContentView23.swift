//
//  ContentView23.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/09.
//

import SwiftUI

struct ContentView23: View {

    var body: some View {
        VStack(alignment: .leading) {
            CardView {
                Text("hoge")
                Text("fuga")
            }
        }.padding()
    }
}

struct CardView<Content: View>: View {
    var content: Content
        
    init(@ViewBuilder  content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content.background(.red)
    }
}

#Preview {
    ContentView23()
}
