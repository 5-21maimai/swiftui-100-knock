//
//  ContentView5.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/30.
//

import SwiftUI

struct ContentView5: View {

    var body: some View {
        HStack {
            ForEach(0..<5) { _ in
                Image("Panda")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
        }.padding(16)
    }
}

#Preview {
    ContentView5()
}
