//
//  String.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 09/01/2025.
//

import Foundation
extension String {
    func removingTextBeforeFirstPipe() -> String {
         if let range = self.range(of: "|") {
             return self[range.upperBound...].trimmingCharacters(in: .whitespaces)
         }
         return self
     }
}
