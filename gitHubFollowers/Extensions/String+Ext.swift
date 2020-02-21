//
//  String+Ext.swift
//  gitHubFollowers
//
//  Created by Austin Tooley on 2/21/20.
//  Copyright © 2020 Austin Tooley. All rights reserved.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertDateToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        
        return date.convertToMonthYearFormat()
    }
}
