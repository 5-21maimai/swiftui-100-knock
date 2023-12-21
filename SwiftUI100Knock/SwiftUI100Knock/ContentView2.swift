//
//  ContentView2.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/21.
//

import SwiftUI

struct ContentView2: View {

    var body: some View {
        Image("Panda")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 200)
            .background(.red)
            .clipped()
    }
        
}

#Preview {
    ContentView2()
}
