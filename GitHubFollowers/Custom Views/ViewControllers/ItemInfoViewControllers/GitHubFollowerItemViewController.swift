//
//  GitHubFollowerItemViewController.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 01/12/23.
//

import UIKit

class GitHubFollowerItemViewController: GitHubItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
}
