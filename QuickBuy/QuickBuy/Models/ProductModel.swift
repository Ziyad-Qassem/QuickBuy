//
//  ProductModel.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 08/01/2025.
//

import Foundation

struct ProductsResponse: Codable {
    let products: [ProductModel]
    
    enum CodingKeys: String, CodingKey {
        case products = "products"
    }
}
struct ProductModel : Codable {
    let id : Int64
    let title : String
    let description : String
    let brand : String
    let type : String
    let handle : String
    let tags : String
    let variants : [VariantModel]
    let options : [ProductOptionsModel]
    let images : [ProductImageModel]
    let image : ProductImageModel
    
    enum CodingKeys : String , CodingKey {
        case id = "id"
        case title = "title"
        case description = "body_html"
        case brand = "vendor"
        case type = "product_type"
        case handle = "handle"
        case tags = "tags"
        case variants = "variants"
        case options = "options"
        case images = "images"
        case image = "image"
        
    }
}

struct VariantModel : Codable {
    let id : Int64
    let productId : Int64
    let title : String
    let price : Double
    let position : Int
    let size : String
    let color : String
    let inventoryID : Int64
    let quantity : Int
    
    enum CodingKeys : String , CodingKey {
        case id = "id"
        case productId = "product_id"
        case title = "title"
        case price = "price"
        case position = "position"
        case size = "option1"
        case color = "option2"
        case inventoryID = "inventory_item_id"
        case quantity = "inventory_quantity"
    }
}

struct ProductOptionsModel : Codable {
    let id : Int64
    let productId : Int64
    let name : String
    let postion : Int
    let values : [String]
    
    enum CodingKeys : String , CodingKey {
        case id = "id"
        case productId = "product_id"
        case name = "name"
        case postion = "position"
        case values
    }
}

struct ProductImageModel : Codable{
    let id : Int64
    let productId : Int64
    let imageUrl : String
    
    enum CodingKeys : String , CodingKey {
        case id = "id"
        case productId = "product_id"
        case imageUrl = "src"
    }
}

