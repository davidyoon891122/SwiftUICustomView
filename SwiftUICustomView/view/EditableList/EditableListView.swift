//
//  EditableListView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/15/24.
//

import SwiftUI

struct EditableListView<Model>: View where Model: EditableListViewModelProtocol {
    
    @ObservedObject private var viewModel: Model
    
    init(viewModel: Model) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List {
            ForEach(viewModel.menus, id: \.self) {
                Text($0)
            }
            .onDelete(perform: viewModel.onDelete)
            .onMove(perform: viewModel.onMove)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Hey")
        .onAppear {
            viewModel.loadMenus()
        }
    }
}

#Preview {
    EditableListView(viewModel: EditableListViewModel())
}
