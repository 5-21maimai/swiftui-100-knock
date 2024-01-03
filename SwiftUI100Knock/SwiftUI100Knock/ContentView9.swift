//
//  ContentView9.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/30.
//

import SwiftUI

struct ContentView9: View {
    @State private var number: Int = 0

    var body: some View {
        VStack {
            Text("\(number)")
            Button {
                number = Int.random(in: 0...100)
            } label: {
                Text("Tap Me!!!")
            }
        }
    }
        
}

#Preview {
    ContentView9()
}
