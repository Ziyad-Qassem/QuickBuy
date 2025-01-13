//
//  ThemeAdapter.swift
//  QuickBuy
//
//  Created by Ziyad Qassem on 09/01/2025.
//

import Foundation
import SwiftUICore

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let backgroundColor =  Color("BackgroundColor")
    let chevronSignColor = Color("chevron-sign-to-right")
    let primaryTextColor = Color("PrimaryTextColor")
    let buttonThemeColor = Color("buttonThemeColor")
    let logoColor = Color("LogoColor")
}
