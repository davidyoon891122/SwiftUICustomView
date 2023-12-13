//
//  CoinDetailView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import SwiftUI

struct CoinDetailView<Model>: View where Model:ProtocolViewModelProtocol {
    @StateObject var viewModel: Model
    
    @State var item: CoinModel
    
    var body: some View {
        VStack {
            Image(systemName: item.image)
                .resizable()
                .frame(width: 100, height: 100)
            HStack {
                Text("\(item.price)")
                    .bold()
                    .foregroundStyle(item.change == "RISE" ? .red : .blue)
                Text("\(item.percentChange)")
                    .bold()
                    .foregroundStyle(item.change == "RISE" ? .red : .blue)
            }
            VStack {
                CustomDivider()
                TitleValueView(title: "시가", value: "\(viewModel.coinDetailModel?.openPrice ?? 0)")
                TitleValueView(title: "종가", value: "\(viewModel.coinDetailModel?.closePrice ?? 0)")
                TitleValueView(title: "고가", value: "\(viewModel.coinDetailModel?.highPrice ?? 0)")
                TitleValueView(title: "저가", value: "\(viewModel.coinDetailModel?.lowPrice ?? 0)")
                TitleValueView(title: "52주 최고가", value: "\(viewModel.coinDetailModel?.highest52Week ?? 0)")
                TitleValueView(title: "52주 최저가", value: "\(viewModel.coinDetailModel?.lowest52Week ?? 0)")
            }
        }
        .padding()
        .onAppear {
            viewModel.requestCoinDetail(code: item.code)
        }
    }
}

#Preview {
    CoinDetailView(viewModel: ProtocolViewModel(coinItems: [], service: CoinService()), item: .items[0])
}
