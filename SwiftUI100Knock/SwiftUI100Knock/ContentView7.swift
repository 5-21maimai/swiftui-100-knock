//
//  ContentView7.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/30.
//

import SwiftUI

struct ContentView7: View {
    @State private var selectionValue = 1

    var body: some View {
        Picker("ポケモンを選択", selection: $selectionValue) {
            /// 選択項目の一覧
            Text("Snorlax").tag(1)
            Text("Pikachu").tag(2)
            Text("Slowpoke").tag(3)
            Text("Meowth").tag(4)
        }.pickerStyle(.wheel)
    }
}

#Preview {
    ContentView7()
}
