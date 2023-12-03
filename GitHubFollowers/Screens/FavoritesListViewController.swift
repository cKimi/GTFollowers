//
//  FavoritesListViewController.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 29/11/23.
//

import UIKit

class FavoritesListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { [weak self] result in
            switch result {
            case .success(let favorites):
                print(favorites)
                
            case .failure(let error):
                break
            }
        }
    }

}
