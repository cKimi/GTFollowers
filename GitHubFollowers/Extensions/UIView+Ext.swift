//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 04/12/23.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
