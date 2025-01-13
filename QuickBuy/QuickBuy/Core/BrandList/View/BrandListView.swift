//
//  BrandListView.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 10/01/2025.
//

import SwiftUI

struct BrandListView: View {
    let brand : BrandModel?
    var body: some View {
        ScrollView{
            VStack{
                HStack {
                    ForEach(0..<15, id: \.self){index in
                        ProductCellView(product: nil)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    BrandListView(brand: MockData.brandMockData)
}
