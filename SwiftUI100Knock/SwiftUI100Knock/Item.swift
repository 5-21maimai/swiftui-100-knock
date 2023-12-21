//
//  Item.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/18.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
