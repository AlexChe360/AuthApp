//
//  UITextField+Extension.swift
//  AuthApp
//
//  Created by Alex on 12.01.2024.
//

import UIKit

extension UITextField {
    
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconView
        leftViewMode = .always
        self.tintColor = .lightGray
    }
    
}