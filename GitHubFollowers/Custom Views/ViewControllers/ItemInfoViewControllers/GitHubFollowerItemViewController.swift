//
//  GitHubFollowerItemViewController.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 01/12/23.
//

import UIKit

protocol GitHubFollowerItemViewControllerDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GitHubFollowerItemViewController: GitHubItemInfoViewController {
    
    weak var delegate: GitHubFollowerItemViewControllerDelegate!
    
    init(user: User, delegate: GitHubFollowerItemViewControllerDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
