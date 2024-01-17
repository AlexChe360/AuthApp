//
//  UIView+Extensions.swift
//  AuthApp
//
//  Created by Alex on 12.01.2024.
//

import UIKit

extension UIView {
    func addSubViews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
}
