//
//  UIFont+ Ext.swift
//  PodCastApp-Viper
//
//  Created by Ahmet Göktürk Kurt on 11.05.2024.
//

import UIKit

extension UIFont {
    var boldVersion: UIFont {
        guard let descriptor = fontDescriptor.withSymbolicTraits(.traitBold) else {
            return self // eğer bold versiyonu oluşturulamazsa orijinal fontu döndür
        }
        return UIFont(descriptor: descriptor, size: .zero) /// 0 is keep to orjinal size
    }
}
