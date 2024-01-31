//
//  StockModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import Foundation

struct StockModel: Identifiable {
    
    let id: UUID
    let date: Date
    let value: Int
    
    static func getData() -> [StockModel] {
        var stocks: [StockModel] = []
        
        let startDate = Calendar.current.date(from: DateComponents(year: 2024, month: 1, day: 1))!
        let endDate = Calendar.current.date(from: DateComponents(year: 2024, month: 2, day: 31))!
        
        var currentDate = startDate
        while currentDate <= endDate {
            let randomValue = Int.random(in: 4000...7000)
            let stock = StockModel(id: UUID(), date: currentDate, value: randomValue)
            stocks.append(stock)
            currentDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate)!
        }
        
        return stocks
    }
    
}
