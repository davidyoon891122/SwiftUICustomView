//
//  OptionalTestView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import SwiftUI

struct OptionalTestView: View {
    @ObservedObject var viewModel: OptionalViewModel
    var body: some View {
        VStack {
            SubView(account: $viewModel.accountModel)
            Spacer()
            Button(action: {
                viewModel.accountModel = nil
                viewModel.requestChange()
            }, label: {
                Text("Reload")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.black)
                    .cornerRadius(8.0)
            })
            .padding()
        }
        .onAppear {
            viewModel.requestChange()
        }
    }
}

#Preview {
    OptionalTestView(viewModel: OptionalViewModel())
}

struct SubView: View {
    @Binding var account: AccountModel?
    
    var body: some View {
        TitleValueView(title: "계좌 번호", value: account?.accountNumber ?? "")
            .padding()
    }
}

struct TitleValueView: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value)
        }
    }
}
