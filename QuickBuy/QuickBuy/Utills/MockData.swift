//
//  MockData.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 09/01/2025.
//

import Foundation
struct MockData {
    static let productMockData = ProductModel(id: 0, title: "ADIDAS | CLASSIC BACKPACK 2", description: "This women's backpack has a glam look, thanks to a faux-leather build with an allover fur print. The front zip pocket keeps small things within reach, while an interior divider reins in potential chaos., this is an edit", brand: "ADIDAS", type: "shoe", handle: "", tags: "", variants: [variantMockData], options: [optionMockData], images: [productImageMockData], image: productImageMockData)
   
    static let variantMockData = VariantModel(id: 0, productId: 0, title: "variant one", price: 37.28, position: 0, size: "OS", color: "black", inventoryID: 0, quantity: 2)
    
    static let optionMockData = ProductOptionsModel(id: 0, productId: 0, name: "option 1", postion: 0, values: [""])
    
    static let productImageMockData = ProductImageModel(id: 0, productId: 0, imageUrl: "")
    
    static let brandMockData = BrandModel(BrandId: 0, name: "ADIDAS", image: brandImageMockData)
    
    static let brandImageMockData = BrandImageModel(imageUrl: nil)
}
