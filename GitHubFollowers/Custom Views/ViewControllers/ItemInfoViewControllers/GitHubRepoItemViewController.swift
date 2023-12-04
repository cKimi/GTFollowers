//
//  GitHubRepoItemViewController.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 01/12/23.
//

import UIKit

protocol GitHubRepoItemViewControllerDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class GitHubRepoItemViewController: GitHubItemInfoViewController {
    
    weak var delegate: GitHubRepoItemViewControllerDelegate!
    
    init(user: User, delegate: GitHubRepoItemViewControllerDelegate) {
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
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
    
}
