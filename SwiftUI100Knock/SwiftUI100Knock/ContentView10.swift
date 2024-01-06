//
//  ContentView10.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/04.
//

import SwiftUI

struct SectionContent: Hashable {
    let title: String
    let contents: [String]
}

struct ContentView10: View {
    private let sectionContents = [
        SectionContent(
            title: "Fluits",
            contents: ["Apple", "Orange", "Grape"]
        ),
        SectionContent(
            title: "Vegetables",
            contents: ["Potato", "Carrot", "Onion"]
        )
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(sectionContents, id: \.self) { section in
                    Section(section.title) {
                        ForEach(section.contents, id: \.self) { content in
                            NavigationLink(destination: ContentView11(text: content)) {
                                Text(content)
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView10()
}
