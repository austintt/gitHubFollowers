//
//  Date+Ext.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 2/21/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM yyyy"
        
        return formatter.string(from: self)
    }
}
