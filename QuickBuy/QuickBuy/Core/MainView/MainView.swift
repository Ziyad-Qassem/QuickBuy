//
//  MainView.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 09/01/2025.
//

import SwiftUI

struct TabBarView: View {
@State private var selectedTab : Int = 0
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: selectedTab ==  0 ? "house.fill" : "house" )
                        .environment(\.symbolVariants , selectedTab == 0 ? .fill : .none)
                    
                }.onAppear {selectedTab = 0}
                .tag(0)
            Text("WishList")
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants , selectedTab == 1 ? .fill : .none)
                }.onAppear {selectedTab = 1}
                .tag(1)
            Text("Cart")
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "cart.fill" : "cart")
                        .environment(\.symbolVariants , selectedTab == 2 ? .fill : .none)
                }.onAppear{selectedTab = 2}
                .tag(2)
            Text("Profile")
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "person.fill" : "person")
                        .environment(\.symbolVariants , selectedTab == 3 ? .fill : .none)
                }.onAppear{selectedTab = 3}
                .tag(3)
        } .tint(Color.theme.buttonThemeColor)
    }
}

#Preview {
    TabBarView()
}
