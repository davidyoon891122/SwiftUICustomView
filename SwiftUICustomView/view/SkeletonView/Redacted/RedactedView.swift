//
//  RedactedView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/28/23.
//

import SwiftUI

struct RedactedView<Model>: View where Model: RedactedViewModelProtocol {
    
    @ObservedObject private var viewModel: Model
    
    init(viewModel: Model) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Image(systemName: viewModel.profileModel.image)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding()
                .overlay {
                    Circle()
                        .stroke(.gray)
                }
            Text(viewModel.profileModel.name)
                .font(.system(size: 20))
                .bold()
            
            Spacer()
                .frame(height: 30)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "mail")
                    Text(viewModel.profileModel.mail)
                        .bold()
                }
                HStack {
                    Image(systemName: "phone")
                    Text(viewModel.profileModel.phone)
                        .bold()
                }
                HStack {
                    Image(systemName: "network")
                    Text(viewModel.profileModel.blog)
                        .bold()
                }
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray)
            }
            
            Spacer()
                .frame(height: 30)
            
            Button(action: {
                Task {
                    await viewModel.requestProfile()
                }
            }, label: {
                Text("Update")
                    .bold()
                    .foregroundStyle(.purple)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(.secondary)
                    .cornerRadius(14)
                    .padding()
                
            })
        }
        .redacted(when: viewModel.isLoading)
    }
}

#Preview {
    RedactedView(viewModel: RedactedViewModel())
}
