//
//  Item.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 08/01/2025.
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
