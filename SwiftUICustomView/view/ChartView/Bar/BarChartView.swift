//
//  BarChartView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI
import Charts

struct BarChartView: View {
    
    let stats: [StatsModel] = [
        .init(city: "Seoul", polulation: 1000, gender: .male),
        .init(city: "Seoul", polulation: 800, gender: .female),
        .init(city: "Busan", polulation: 750, gender: .female),
        .init(city: "Incheon", polulation: 500, gender: .notSet),
        .init(city: "NYCity", polulation: 845, gender: .male)
    ]
    
    var body: some View {
        Chart {
            ForEach(stats, id:\.city) { stat in
                BarMark(
                    x: .value("City", stat.city),
                    y: .value("Population", stat.polulation)
                )
                .foregroundStyle(by: .value("Gender", stat.gender))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .position(by: .value("Gender", stat.gender))
                .annotation(position: .bottom, alignment: .trailing, spacing: 16) {
                    Text(verbatim: stat.polulation.formatted())
                        .font(.caption)
                }
                
            }
        }
    }
}

#Preview {
    BarChartView()
}
