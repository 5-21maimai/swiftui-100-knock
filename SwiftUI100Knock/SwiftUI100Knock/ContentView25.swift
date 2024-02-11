//
//  ContentView25.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/02/10.
//

import SwiftUI


struct ContentView25: View {
    @State private var editMode: EditMode = .inactive
    @State private var contents = ["Apple", "Orange", "Grape"]

    var body: some View {
        NavigationView {
            List {
                ForEach(contents, id: \.self) { content in
                    NavigationLink(destination: ContentView12(text: content)) {
                        Text(content)
                    }
                }.onDelete(perform: { indexSet in
                    contents.remove(atOffsets: indexSet)
                })
            }.navigationBarItems(
                trailing: Button{
                    self.editMode = self.editMode.isEditing ? .inactive : .active
                } label: {
                    if self.editMode.isEditing {
                        Text("Done")
                    } else {
                        Text("Edit")
                    }
                }
            )
            .environment(\.editMode, self.$editMode)
        }
    }
}

#Preview {
    ContentView25()
}
