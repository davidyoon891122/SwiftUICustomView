//
//  ProtocolView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import SwiftUI

struct ProtocolView<Model>: View where Model: ProtocolViewModelProtocol {
    @ObservedObject var viewModel: Model
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.coinItems, id: \.self) { coinModel in
                        NavigationLink(destination: CoinDetailView(viewModel: viewModel, item: coinModel), label: {
                            CoinItemView(coinModel: coinModel)
                        })
                    }
                }
                .padding()
            }
            .navigationTitle("ProtocolView")
        }
        .onAppear {
            viewModel.requestCoinItems()
        }
    }
}


#Preview {
    ProtocolView(viewModel: ProtocolViewModel(coinItems: [], service: CoinService()))
}
