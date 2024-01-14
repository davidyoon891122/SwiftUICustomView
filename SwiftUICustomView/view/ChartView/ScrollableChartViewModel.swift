//
//  ScrollableChartViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import Foundation
import Charts

struct ChartInfoModel: Hashable {
    
    let date: Date
    let open: Double
    let close: Double
    let low: Double
    let high: Double
    
}

extension ChartInfoModel {
    
    static var items: [Self] {
        let currentDate = Date()
        
        let calendar = Calendar.current
        
        var chartInfoModels: [Self] = []
        
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = .current
        
        
        for i in 1...200 {
            if let targetDate = calendar.date(byAdding: .day, value: -i, to: currentDate) {
                let chartInfo = ChartInfoModel(date: targetDate, open: Double.random(in: 10.0...90.0), close: Double.random(in: 10.0...90.0), low: Double.random(in: 0.0...100.0), high: Double.random(in: 0.0...100.0))
                
                chartInfoModels.append(chartInfo)
            }
        }
        
        return chartInfoModels
    }
    
}

protocol ScrollableChartViewModelProtocol: ObservableObject {
    
    var chartInfoModel: [ChartInfoModel] { get }
    func requestChartInfo()
    
}

class ScrollableChartViewModel {
    
    @Published var chartInfoModel: [ChartInfoModel] = []
    
    
}

extension ScrollableChartViewModel: ScrollableChartViewModelProtocol {
    
    func requestChartInfo() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.chartInfoModel = ChartInfoModel.items
        }
    }

    
}
