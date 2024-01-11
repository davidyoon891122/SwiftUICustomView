//
//  StatsModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import Foundation
import Charts

enum Gender: String {
    case male
    case female
    case notSet
}

extension Gender: Plottable {
    var primitivePlottable: String {
        rawValue
    }
}

struct StatsModel {
    let city: String
    let polulation: Int
    let gender: Gender
}
