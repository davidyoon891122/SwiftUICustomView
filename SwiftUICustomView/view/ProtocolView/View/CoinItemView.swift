//
//  CoinItemView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/12.
//

import SwiftUI

struct CoinItemView: View {
    @State var coinModel: CoinModel
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading) {
                    Text("KRW-BTC")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundStyle(.black)
                    Text("Bitcoin")
                        .bold()
                        .font(.system(size: 16))
                        .foregroundStyle(.gray)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("50000000")
                        .bold()
                        .foregroundStyle(.red)
                    Text("+0.52%")
                        .bold()
                        .foregroundStyle(.red)
                }
                Text("546,000M")
                    .bold()
                    .font(.system(size: 12))
            }
            CustomDivider()
        }
    }
}

#Preview {
    CoinItemView(coinModel: .items[0])
}
