//
//  ContentView27Next.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/22.
//

import SwiftUI

struct ContentView27Next: View {
    var delegate: ContentView27Delegate?
    var body: some View {
        Button {
            delegate?.chengeText(text: "Change!!!")
        } label: {
            Text("Change Text")
        }
        
    }
}

#Preview {
    ContentView27Next()
}
