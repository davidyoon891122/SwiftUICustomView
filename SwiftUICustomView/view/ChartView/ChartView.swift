//
//  ChartView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    @State private var numbers = (0...10)
        .map { _ in Int.random(in: 0...10) }
    
    var body: some View {
        Chart {
            ForEach(Array(numbers.enumerated()), id: \.element) { index, number in
                LineMark(x: .value("index", index), y: .value("value", number))
                PointMark(x: .value("index", index), y: .value("value", number))
            }
        }
    }
}

#Preview {
    ChartView()
}
