//
//  CandleChartViewWithMark.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI
import Charts

struct CandleChartViewWithMark: View {
    let candles: [CandleModel] = [
        .init(open: 3, close: 6, low: 1, high: 8),
        .init(open: 4, close: 7, low: 2, high: 9),
        .init(open: 5, close: 8, low: 3, high: 10)
    ]
    
    var body: some View {
        Chart {
            ForEach(0...10, id: \.self) { index in
                CandlestickMark(x: .value("index", index), low: .value("low", Int.random(in: 0...2)), high: .value("high", Int.random(in: 8...10)), open: .value("open", Int.random(in: 2...8)), close: .value("close", Int.random(in: 2...8)))
            }
        }
    }
}

#Preview {
    CandleChartViewWithMark()
}
