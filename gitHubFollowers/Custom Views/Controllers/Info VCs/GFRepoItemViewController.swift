//
//  GFRepoItemViewController.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 2/13/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import UIKit

class GFRepoItemViewController: GFItemInfoViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    // MARK: - Configure
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
