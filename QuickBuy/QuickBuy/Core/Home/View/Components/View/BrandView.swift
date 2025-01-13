//
//  BrandView.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 10/01/2025.
//

import SwiftUI
import Kingfisher
struct BrandView: View {
    let brand : BrandModel?
   
    var body: some View {
        Button {
           
        } label: {
            if let imageURL = brand?.image.imageUrl {
                KFImage(URL(string: imageURL))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60 , height: 60)
                    .background(.white)
                    .clipShape(.circle)
                    .shadow(radius: 10)
            }else {
                Image("brand")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .background(.white)
                    .clipShape(.circle)
                    .shadow(radius: 10)
            }
        }

    }
}

#Preview {
    BrandView(brand: MockData.brandMockData)
}
