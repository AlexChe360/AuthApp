//
//  NSMutableAttributedString+Extensions.swift
//  AuthApp
//
//  Created by Alex on 16.01.2024.
//

import UIKit

extension NSMutableAttributedString {
    
    convenience init (fullString: String, fullStringColor: UIColor, fullStringSize: CGFloat, subString: String, subStringColor: UIColor, subStringSize: CGFloat) {
        let rangeOfSubString = (fullString as NSString).range(of: subString)
        let rangeOfFullString = NSRange(location: 0, length: fullString.count)
        let attributedString = NSMutableAttributedString(string:fullString)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: fullStringColor, range: rangeOfFullString)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: subStringColor, range: rangeOfSubString)
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: fullStringSize, weight: .medium), range: rangeOfSubString)
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: subStringSize, weight: .medium), range: rangeOfFullString)
        
        self.init(attributedString: attributedString)
    }
    
}
