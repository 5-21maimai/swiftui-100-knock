//
//  ContentView1.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/18.
//

import SwiftUI
import SwiftData

struct ContentView1: View {

    var body: some View {
        Image("Panda")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .background(.red)
    }
        
}

#Preview {
    ContentView1()
        .modelContainer(for: Item.self, inMemory: true)
}
