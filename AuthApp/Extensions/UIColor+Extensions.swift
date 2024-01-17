//
//  UIColor+Extensions.swift
//  AuthApp
//
//  Created by Alex on 12.01.2024.
//

import UIKit

extension UIColor {
    
    static let whiteColor = UIColor(rgb: 0xFFFFFF)
    static let grayColor = UIColor(rgb: 0xBDBDBD)
    static let primaryColor = UIColor(rgb: 0xD8C3FC)
    static let secondaryColor = UIColor(rgb: 0x93C4FC)
    static let buttonColor = UIColor(rgb: 0x6A7AD1)
    static let facebookButtonColor = UIColor(rgb: 0x39A4EE)
    static let twitterButtonColor = UIColor(rgb: 0x5471B3)
    
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}
