//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 04/12/23.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
