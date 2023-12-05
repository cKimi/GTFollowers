//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 01/12/23.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
