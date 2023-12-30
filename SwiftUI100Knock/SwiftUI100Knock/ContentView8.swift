//
//  ContentView8.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/30.
//

import SwiftUI

struct ContentView8: View {

    var body: some View {
        TabView {
            ContentView1().tabItem {
                Label("First", systemImage: "1.square")
            }
            ContentView2().tabItem {
                Label("Second", systemImage: "2.square")
            }
            ContentView3().tabItem {
                Label("Third", systemImage: "3.square")
            }
        }
    }
        
}

#Preview {
    ContentView8()
}
