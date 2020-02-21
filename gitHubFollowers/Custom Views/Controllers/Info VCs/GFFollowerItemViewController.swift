//
//  GFFollowerItemViewController.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 2/13/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import UIKit

class GFFollowerItemViewController: GFItemInfoViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    // MARK: - Configure
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
