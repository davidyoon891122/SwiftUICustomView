//
//  ContentView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProtocolView(viewModel: ProtocolViewModel(coinItems: [], service: CoinService()))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
