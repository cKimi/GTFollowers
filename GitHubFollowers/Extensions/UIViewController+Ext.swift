//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 29/11/23.
//

import UIKit

extension UIViewController {
    func presentGithubAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GitHubAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
