//
//  GFAvatarImageView.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 1/7/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    // MARK: - Properties
    let placeholderImage = UIImage(named: "avatar-placeholder")!

    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Internal
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
