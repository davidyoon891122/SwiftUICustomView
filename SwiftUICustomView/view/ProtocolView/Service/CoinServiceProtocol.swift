//
//  CoinServiceProtocol.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import Foundation
import Combine

protocol CoinServiceProtocol {
    func requestCoinItems() -> AnyPublisher<[CoinModel], Error>
    func requestCoinDetailInfo(code: String) -> AnyPublisher<CoinDetailModel?, Error>
}
