//
//  CoinDetailModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import Foundation

struct CoinDetailModel: Codable, Hashable {
    let code: String
    let lowPrice: Double
    let highPrice: Double
    let openPrice: Double
    let closePrice: Double
    let highest52Week: Double
    let lowest52Week: Double
}

extension CoinDetailModel {
    static let item: CoinDetailModel = .init(code: "KRW-BTC", lowPrice: 48000000, highPrice: 54000000, openPrice: 48500000, closePrice: 5200000, highest52Week: 82500000, lowest52Week: 28500000)
}
