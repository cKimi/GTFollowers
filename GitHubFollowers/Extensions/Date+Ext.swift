//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 01/12/23.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
