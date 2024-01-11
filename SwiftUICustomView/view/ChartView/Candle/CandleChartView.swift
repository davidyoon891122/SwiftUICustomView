//
//  CandleChartView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI
import Charts

struct CandleChartView: View {
    
    let candles: [CandleModel] = [
        .init(open: 3, close: 6, low: 1, high: 8),
        .init(open: 4, close: 7, low: 2, high: 9),
        .init(open: 5, close: 8, low: 3, high: 10)
    ]
    
    var body: some View {
        Chart {
            ForEach(Array(zip(candles.indices, candles)), id: \.1) { index, candle in
                RectangleMark(
                    x: .value("index", index),
                    yStart: .value("low", candle.low),
                    yEnd: .value("high", candle.high),
                    width: 4
                )
                RectangleMark(
                    x: .value("index", index),
                    yStart: .value("open", candle.open),
                    yEnd: .value("close", candle.close),
                    width: 16
                )
                .foregroundStyle(.red)
                
            }
        }
    }
}

#Preview {
    CandleChartView()
}
