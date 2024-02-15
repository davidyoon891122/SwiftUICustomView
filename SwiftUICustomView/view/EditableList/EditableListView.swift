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
        VStack {
            List {
                ForEach(viewModel.menus.indices, id:\.self) { index in
                    
                    TextField("Title", text: $viewModel.editableMenus[index])
                }
                .onDelete(perform: viewModel.onDelete)
                .onMove(perform: viewModel.onMove)
            }
            Spacer()
            Button(action: {
                // TODO: - Copy the editableMenus to the menus
                self.viewModel.commitChanges()
            }, label: {
                Text("Commit")
            })
        }
        .onAppear {
            viewModel.loadMenus()
        }
    }
}

#Preview {
    EditableListView(viewModel: EditableListViewModel())
}
