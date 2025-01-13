//
//  ProductCellView.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 08/01/2025.
//

import SwiftUI
import Kingfisher
struct ProductCellView: View {
    let product : ProductModel?
    let input : String = "CLASSIC BACKPACK | LEGEND INK MULTICOLOUR"
    let width : CGFloat = ((UIScreen.main.bounds.width - 60) / 2)
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            if let imageUrl = product?.image.imageUrl {
                KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: width - 20, height: 140)
            }else {
                Image("Bag")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: 140)
            }
           
            Text(product?.title.removingTextBeforeFirstPipe() ?? input)
                .font(.system(size: 13))
                .padding(.horizontal ,5)
                .foregroundStyle(Color.theme.primaryTextColor)
                
           
            HStack{
                Text(formatProductPrice(for: product))
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundStyle(Color.theme.primaryTextColor)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundStyle(Color.theme.buttonThemeColor)
                        .imageScale(.medium)
                }
            }.padding(.horizontal, 8)
                
        }
        .frame(width: width, height: 250)
        .background(Color.theme.backgroundColor)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
    
    func formatProductPrice(for product : ProductModel?) -> String {
        let str = "$ " +   (NSString(format: "%.2f",  product?.variants[0].price ?? 100) as String) as String
        return str
    }
}

#Preview {
    ProductCellView(product: MockData.productMockData)
}
