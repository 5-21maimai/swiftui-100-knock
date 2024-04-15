//
//  ContentView29.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/03/04.
//

import SwiftUI

struct ContentView29: View {
    @State private var selectionColor: Color = .red
    @State private var selectionNumber: Int = 0

    var body: some View {
        HStack {
            Picker("色を選択", selection: $selectionColor) {
                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)
            }.pickerStyle(.wheel)
            
            Picker("色を選択", selection: $selectionNumber) {
                Text("0").tag(0)
                Text("1").tag(1)
                Text("2").tag(2)
            }.pickerStyle(.wheel)
        }
    }
}

#Preview {
    ContentView29()
}
