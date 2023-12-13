//
//  ProtocolViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import Foundation
import Combine

protocol ProtocolViewModelProtocol: ObservableObject {
    var coinItems: [CoinModel] { get set }
    var coinDetailModel: CoinDetailModel? { get set }
    func requestCoinItems()
    func requestCoinDetail(code: String)
}

class ProtocolViewModel {
    @Published var coinItems: [CoinModel] = []
    @Published var coinDetailModel: CoinDetailModel?
    private var service: CoinServiceProtocol
    private var cancellables: [AnyCancellable] = []
    
    
    required init(
        coinItems: [CoinModel],
        service: CoinServiceProtocol
    ) {
        self.coinItems = coinItems
        self.service = service
    }
    
}

extension ProtocolViewModel: ProtocolViewModelProtocol {
    func requestCoinItems() {
        service.requestCoinItems().sink(receiveCompletion: { result in
            switch result {
            case .finished:
                print("finished")
            case .failure(let failure):
                print(failure)
            }
        }, receiveValue: { [weak self] coinModels in
            guard let self = self else { return }
            self.coinItems = coinModels
        })
        .store(in: &cancellables)
    }
    
    func requestCoinDetail(code: String) {
        self.coinDetailModel = nil
        service.requestCoinDetailInfo(code: code)
            .sink(receiveCompletion: { result in
                switch result {
                case .finished:
                    print("finished")
                case .failure(let failure):
                    print(failure)
                }
            }, receiveValue: { [weak self] detailModel in
                guard let self = self else { return }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.coinDetailModel = detailModel
                }
            })
            .store(in: &cancellables)
    }
}



