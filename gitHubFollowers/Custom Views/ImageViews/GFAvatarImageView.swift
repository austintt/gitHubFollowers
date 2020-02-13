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
    let cache = NetworkManager.shared.imageCache
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
    
    func downloadImage(from urlString: String) {
        
        let cacheKey = NSString(string: urlString)
        
        // Check if we already have the image cached
        if let image = cache.object(forKey: cacheKey) {
            self.image = image
            return
        }
        
        // We don't have the image cached, let's download it
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            // Make sure we're good
            if error != nil { return }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
            guard let data = data else { return }
            
            // Grab the image data
            guard let image = UIImage(data: data) else { return }
            
            // Cache the image
            self?.cache.setObject(image, forKey: cacheKey)
            
            // Set the image
            DispatchQueue.main.async {
                self?.image = image
            }
        }
        task.resume()
    }
}
