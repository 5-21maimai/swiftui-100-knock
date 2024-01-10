//
//  ContentView18.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/10.
//

import SwiftUI

struct ContentView18: View {
    @State private var text = "hoge"

    var body: some View {
        VStack {
            Text(text)
            Button {
                text = ["hoge", "fuga", "piyo"].randomElement()!
            } label: {
                HStack {
                    Image("Panda")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                    Text("Tap Me!!!")
                        .foregroundColor(.black)
                }
                .padding()
                .border(.gray, width: 2)
            }
        }
    }
        
}

#Preview {
    ContentView18()
}
