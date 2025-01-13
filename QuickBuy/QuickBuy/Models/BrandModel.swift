//
//  BrandModel.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 10/01/2025.
//

import Foundation

struct SmartCollectionsResponse : Codable   {
    let Brands : [BrandModel]
    
    enum CodingKeys : String , CodingKey {
        case Brands = "smart_collections"
    }
}

struct BrandModel : Codable ,  Identifiable, Hashable  {
    
    let BrandId : Int64
    var id : Int64 {
        return BrandId
    }
    let name : String
    let image : BrandImageModel
    
    enum CodingKeys : String , CodingKey {
        case BrandId = "id"
        case name 
        case image
    }
    
}

struct BrandImageModel : Codable , Hashable  {
    let imageUrl : String?
    
    enum CodingKeys : String , CodingKey {
        case imageUrl = "src"
    }
}
