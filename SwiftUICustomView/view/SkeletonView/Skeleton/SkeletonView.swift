//
//  SkeletonView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/28/23.
//

import SwiftUI

struct SkeletonView<Model>: View where Model: SkeletonViewModelProtocol {
    
    @ObservedObject private var viewModel: Model
    
    init(viewModel: Model) {
        self.viewModel = viewModel
    }
    
    
    var body: some View {
        List(viewModel.skills, id: \.self) { skill in
            VStack(alignment: .leading) {
                Text("Developer")
                Text(skill)
            }
            .redacted(when: viewModel.isLoading, reason: .placeholder)
        }
        .refreshable {
            await viewModel.fetchData()
        }
        .task {
            await viewModel.fetchData()
        }
        .alert(isPresented: .constant(viewModel.error != nil)) {
            Alert(title: Text("Error"), message: Text(viewModel.error?.localizedDescription ?? "Unknown error"))
        }
    }
    
}

#Preview {
    SkeletonView(viewModel: SkeletonViewModel())
}
