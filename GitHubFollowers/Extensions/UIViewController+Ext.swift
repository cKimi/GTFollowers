//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 29/11/23.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGitHubAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GitHubAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    func presentDefaultError() {
        let alertVC = GitHubAlertViewController(title: "Something went wrong", message: "We were unable to complete your task at this time. Please try again", buttonTitle: "Ok")
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    func presentSafariViewController(with url: URL) {
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.preferredControlTintColor = .systemGreen
        present(safariViewController, animated: true)
    }
    
}
