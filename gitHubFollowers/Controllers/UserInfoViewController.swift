//
//  UserInfoViewController.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 2/12/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] (result) in
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self?.presentGFAlertOnMainThread(title: "Something went wrong", message: error.localizedDescription, buttonTitle: "Ok")
            }
        }
    }
    
    @objc
    func dismissVC() {
        dismiss(animated: true)
    }
}
