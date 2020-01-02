//
//  User.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 1/1/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var blog: String?
    var email: String?
    var company: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var followers: Int
    var following: Int
    var createdAt: String
}
