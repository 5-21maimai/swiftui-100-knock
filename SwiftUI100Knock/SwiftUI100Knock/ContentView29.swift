//
//  ContentView29.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/03/04.
//

import SwiftUI

struct ContentView29: View {
    @State private var selectionColor: Color = .red

    var body: some View {
        HStack {
            Picker("色を選択", selection: $selectionColor) {
                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)
            }.pickerStyle(.wheel)
            
            Picker("色を選択", selection: $selectionColor) {
                Text("赤").tag(Color.red)
                Text("青").tag(Color.blue)
                Text("緑").tag(Color.green)
            }.pickerStyle(.wheel)
        }
    }
}

#Preview {
    ContentView29()
}
