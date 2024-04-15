//
//  ContentView30.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/04/15.
//

import SwiftUI

struct ContentView30: View {
    @State var showSheet: Bool = false

    var body: some View {
        HStack {
            Button {
                showSheet.toggle()
            } label: {
                Text("Tap Me!!")
            }
        }.sheet(isPresented: $showSheet) {
            Text("Sheet")
        }
    }
}

#Preview {
    ContentView30()
}
