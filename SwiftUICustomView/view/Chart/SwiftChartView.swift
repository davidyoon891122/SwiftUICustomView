//
//  SwiftChartView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import SwiftUI
import Charts

struct SwiftChartView: View {
    
    @State private var stocks: [StockModel] = StockModel.getData()
    
    var body: some View {
        Chart {
            ForEach(stocks, id: \.id) { stock in
                AreaMark(
                    x: .value("Date and Time", stock.date, unit: .day, calendar: .autoupdatingCurrent),
                    y: .value("Stock Price", stock.value)
                )
                    .foregroundStyle(.linearGradient(colors: [.pink.opacity(0.3), .pink.opacity(0.1)], startPoint: .top, endPoint: .bottom))
                
                LineMark(
                    x: .value("Date and Time", stock.date, unit: .day, calendar: .autoupdatingCurrent),
                    y: .value("Stock Price", stock.value)
                )
                .foregroundStyle(.white)
            }
        }
        .chartScrollableAxes(.horizontal)
        .frame(height: 300)
    }
    
}

#Preview {
    SwiftChartView()
        .preferredColorScheme(.dark)
}
