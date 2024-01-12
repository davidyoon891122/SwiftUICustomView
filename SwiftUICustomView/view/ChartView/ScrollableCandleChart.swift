//
//  ScrollableCandleChart.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI
import Charts

struct ScrollableCandleChart<Model>: View where Model: ScrollableChartViewModelProtocol {
    
    @ObservedObject private var viewModel: Model
    @State private var scrollPosition = Date()
    
    init(viewModel: Model) {
        self.viewModel = viewModel
    }
    
    
    var body: some View {
        Chart {
            ForEach(viewModel.chartInfoModel, id: \.date) { chartInfo in
                CandlestickMark(
                    x: .value("Date", chartInfo.date),
                    low: .value("low", chartInfo.low),
                    high: .value("high", chartInfo.high),
                    open: .value("open", chartInfo.open),
                    close: .value("close", chartInfo.close)
                )
            }
        }
        .frame(height: 240)
//        .chartXVisibleDomain(length: 3600 * 24 * 200)
        .chartScrollPosition(x: .constant(Date()))
        .chartScrollableAxes(.horizontal)
        .onChange(of: scrollPosition) {
            print(scrollPosition)
        }
        .onAppear {
            viewModel.requestChartInfo()
        }
    }
    
    
}

#Preview {
    ScrollableCandleChart(viewModel: ScrollableChartViewModel())
}
