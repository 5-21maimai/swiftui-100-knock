//
//  ContentView22.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/23.
//

import SwiftUI

struct ContentView22: View {

    var body: some View {
        VStack(alignment: .leading) {
            Text("I ❤️ Snorlax!")
                .fontWeight(.bold)
                .font(.system(size: 24))
            Text("Snorlax")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundStyle(.red)
            + Text(" is most")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundStyle(.blue)
            + Text(" cute & cool & powerful")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundStyle(.green)
            + Text(" Pokemon.")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .foregroundStyle(.yellow)
        }.padding()
    }
}

#Preview {
    ContentView22()
}
