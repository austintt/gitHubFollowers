//
//  FavoritesListViewController.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 12/31/19.
//  Copyright © 2019 Austin Tooley. All rights reserved.
//

import UIKit

class FavoritesListViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }

}
