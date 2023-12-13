//
//  CoinModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import Foundation

struct CoinModel: Codable, Hashable {
    let image: String
    let code: String
    let name: String
    let price: Double
    let percentChange: Double
    let change: String
    let volume: Double
}

extension CoinModel {
    static let items: [CoinModel] = [
        .init(image: "person.circle.fill", code: "KRW-BTC", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-ETH", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-XRT", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-AAA", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-BBB", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-CCC", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-DDD", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-EEE", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-FFF", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-GGG", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
        .init(image: "person.circle.fill", code: "KRW-KKK", name: "Bitcoin", price: 50000000, percentChange: 5.25, change: "RISE", volume: 32000000000),
    ]
}
