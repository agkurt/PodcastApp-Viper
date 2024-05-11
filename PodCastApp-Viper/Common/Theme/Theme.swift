//
//  Theme.swift
//  PodCastApp-Viper
//
//  Created by Ahmet Göktürk Kurt on 11.05.2024.
//

import UIKit

struct Theme {
    let themeColor : ThemeColor
    let themeFont:ThemeFont
}

struct ThemeColor {
    let primaryColor: UIColor
    let secondaryColor: UIColor
    let buttonColor:UIColor
    let textColor:UIColor
    let backgroundColor:UIColor
}

struct ThemeFont {
    let headlineFont: UIFont
    let bodyFont: UIFont
}


extension Theme {
    static var defaultTheme : Theme {
        return Theme(themeColor: ThemeColor(primaryColor: UIColor.primary,
                                            secondaryColor: UIColor.gray,
                                            buttonColor: UIColor.primary,
                                            textColor: UIColor.white,
                                            backgroundColor: UIColor.white),
                     themeFont: ThemeFont(headlineFont: .systemFont(ofSize: FontSize.body),
                                          bodyFont: .systemFont(ofSize: FontSize.headline)))
    }
    
}
