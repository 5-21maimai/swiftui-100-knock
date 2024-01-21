//
//  ContentView21.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2024/01/19.
//

import SwiftUI

struct ContentView21: View {
    @State private var needFoldButton = true
    @State private var isFold = false
    @State private var textHeight: CGFloat? = nil

    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text("あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい")
                    .frame(height: textHeight)
                    .padding()
//                    .onPreferenceChange(SizePreference.self) { textSize in
//                        if self.isFirst == true {
//                            if textSize.height > 80 {
//                                self.textHeight = 80
//                                self.isFold = true
//                                self.isFirst = false
//                            } else {
//                                self.needFoldButton = false
//                            }
//                        }
                }
                Spacer()
            }
                    
            if needFoldButton {
                Button(action: {
                    self.isFold.toggle()
                    if self.isFold == true {
                        self.textHeight = 80
                    } else {
                        self.textHeight = nil
                    }
                }) {
                    Text(isFold ? "More" : "Fold")
                }.padding(.trailing, 8)
            }
        }
}

#Preview {
    ContentView21()
}

