//
//  ContentView12.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/06.
//

import SwiftUI

struct ContentView12: View {
    let text: String

    var body: some View {
        Text(text).navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentView12(text: "hoge")
}
