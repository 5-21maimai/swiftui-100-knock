//
//  ContentView23.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/09.
//

import SwiftUI

struct ContentView23: View {

    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            CardView(shadowColor: .red) {
                Text("hoge")
                Text("fuga")
            }
            
            CardView(shadowColor: .green) {
                Text("hoge")
                Text("fuga")
            }
            
            CardView(shadowColor: .blue) {
                Image("Panda")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
        }
    }
}

struct CardView<Content: View>: View {
    var shadowColor: Color
    var content: Content
        
    init(
        shadowColor: Color,
        @ViewBuilder  content: () -> Content
    ) {
        self.shadowColor = shadowColor
        self.content = content()
    }
    
    var body: some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(
                color: shadowColor,
                radius: 4,
                x: 4,
                y: 4
            )
    }
}

#Preview {
    ContentView23()
}
