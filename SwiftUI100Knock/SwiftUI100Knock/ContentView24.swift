//
//  ContentView24.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/10.
//

import SwiftUI

struct ContentView24: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("hoge")
                .modifier(CardViewModifier(shadowColor: .red))
            
            Text("hoge")
                .modifier(CardViewModifier(shadowColor: .green))
            
            Image("Panda")
                .resizable()
                .frame(width: 60, height: 60)
                .modifier(CardViewModifier(shadowColor: .blue))
        }
    }
}

struct CardViewModifier: ViewModifier {
    var shadowColor: Color
        
    init(shadowColor: Color) {
        self.shadowColor = shadowColor
    }
    
    func body(content: Content) -> some View {
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
    ContentView24()
}

