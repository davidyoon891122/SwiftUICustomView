//
//  Extension+Date.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import Foundation

extension Date {
    
    init(year: Int, month: Int, day: Int) {
        let calendar = Calendar(identifier: .gregorian)
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        self = calendar.date(from: components)!
    }
    
}
