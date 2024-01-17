//
//  UITextField+Extensions.swift
//  AuthApp
//
//  Created by Alex on 12.01.2024.
//

import UIKit

extension UITextField {
    
    func setLeftView(image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20)) 
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
        self.tintColor = .lightGray
    }
    
    func setRigntView(image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -10, y: 0, width: 30, height: 30))
        iconView.image = image
        iconView.contentMode = .scaleAspectFit
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
        self.tintColor = .lightGray
    }
    
}
