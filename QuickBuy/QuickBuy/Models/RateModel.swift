//
//  RateModel.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 13/01/2025.
//

import Foundation
struct RateModel : Codable , Identifiable {
    let id: Int
    var productId: Int64
    var rate: Double
}
