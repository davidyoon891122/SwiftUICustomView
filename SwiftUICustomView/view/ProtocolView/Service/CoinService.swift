//
//  CoinService.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import Foundation
import Combine

class CoinService: CoinServiceProtocol {
    func requestCoinItems() -> AnyPublisher<[CoinModel], Error> {
        return Future<[CoinModel], Error> { promise in
            promise(.success(CoinModel.items))
        }
        .eraseToAnyPublisher()
    }
    
    func requestCoinDetailInfo(code: String) -> AnyPublisher<CoinDetailModel?, Error> {
        return Future<CoinDetailModel?, Error> { promise in
            promise(.success(.item))
        }
        .eraseToAnyPublisher()
    }
}
