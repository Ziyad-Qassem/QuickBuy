//
//  ContentView.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 08/01/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText : String = ""
    @StateObject var viewModel = HomeViewModel()
    let width = (UIScreen.main.bounds.width - 16) / 3
    @State var selectedBrand: Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                // header
                HStack{
                    Text("") +
                    Text("Q")
                        .foregroundColor(.red)
                        .font(.system(size: 40, weight: .semibold)) +
                    Text("uick")
                        .font(.system(size: 25))
                        .foregroundColor(Color.theme.primaryTextColor) +
                    Text("B")
                        .foregroundColor(.blue)
                        .font(.system(size: 30, weight: .semibold)) +
                    Text("uy")
                        .font(.system(size: 25))
                        .foregroundColor(Color.theme.primaryTextColor)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }

                    
                }.padding(.top, 20)
                .padding(.horizontal)
                //search bar
                
                HStack {
                    TextField("Search", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .foregroundStyle(Color.theme.backgroundColor)
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                    
                }
                .padding(.horizontal)
                
                
                // brands lists
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(0..<13, id: \.self) { index in
                            let brand = MockData.brandMockData
                            NavigationLink(value: brand) {
                                BrandView(brand: brand)
                            }
                        }
                    }
                    .background(Color.theme.backgroundColor)
                    .padding(.vertical, 30)
                    .padding(.leading, 8)
                    .navigationDestination(for: BrandModel.self) { brand in
                        BrandListView(brand: brand)
                    }
                }
                
               
                
                
                // divider
                HStack(spacing: 5 ){
                    Rectangle()
                        .frame(width: width  ,height: 1)
                        .foregroundStyle(Color.black)
                        .opacity(0.3)
                    
                    Text("Quick Buy")
                        .foregroundStyle(Color.black)
                        .opacity(0.6)
                    
                    Rectangle()
                        .frame(width: width  ,height: 1)
                        .foregroundStyle(Color.black)
                        .opacity(0.3)
                }
              
                // product list
                ScrollView() {
                    LazyVStack {
                            ForEach(0..<30, id: \.self) { index in
                                HStack (alignment: .top){
                                    ProductCellView(product: nil)
                                    ProductCellView(product: nil)
                                }.padding(.vertical, 10)
                            }
                    }
                }
                
                
                
            }
        }
    }
}

#Preview {
    HomeView()
}
