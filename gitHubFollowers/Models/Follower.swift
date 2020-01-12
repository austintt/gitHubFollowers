//
//  Follower.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 1/1/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
