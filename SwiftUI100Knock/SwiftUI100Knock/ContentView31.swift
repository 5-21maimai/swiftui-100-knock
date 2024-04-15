//
//  ContentView31.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/04/15.
//

import SwiftUI

struct ContentView31: View {
    @State var showSheet: Bool = false

    var body: some View {
        HStack {
            Button {
                showSheet = true
            } label: {
                Text("Tap Me!!")
            }
        }.fullScreenCover(isPresented: $showSheet) {
            VStack {
                Text("Sheet")
                Button {
                    showSheet = false
                } label: {
                    Text("close")
                }
            }
        }
    }
}

#Preview {
    ContentView31()
}
