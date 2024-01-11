//
//  LineChartView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI
import Charts

struct LineChartView: View {
    
    let numbers: [Double] = (0...10)
        .map { _ in Double.random(in: 0.0...100.0)}
     
    var body: some View {
        Chart {
            RuleMark(y: .value("Limit", 50))
            
            ForEach(Array(numbers.enumerated()), id:\.offset) { index, value in
                LineMark(
                    x: .value("Index", index),
                    y: .value("Value", value)
                )
                .interpolationMethod(.catmullRom)
                .lineStyle(StrokeStyle(lineWidth: 1, dash: [2]))
                
                PointMark(
                    x: .value("Index", index),
                    y: .value("Value", value)
                )
            }
        }
    }
}

#Preview {
    LineChartView()
}
