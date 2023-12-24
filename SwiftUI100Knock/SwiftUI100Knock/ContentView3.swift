//
//  ContentView3.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/25.
//

import SwiftUI

struct ContentView3: View {

    var body: some View {
        Image("Panda")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
    }
        
}

#Preview {
    ContentView3()
}
