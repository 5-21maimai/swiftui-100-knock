//
//  ContentView6.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/30.
//

import SwiftUI

struct ContentView6: View {

    var body: some View {
        NavigationView {
            VStack(spacing: 8) {
                Image("Panda")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("panda")
            }.navigationTitle("Panda")
        }
        
    }
        
}

#Preview {
    ContentView6()
}
