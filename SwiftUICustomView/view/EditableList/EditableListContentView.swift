//
//  EditableListContentView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/15/24.
//

import SwiftUI

struct EditableListContentView: View {
    
    @State private var isEditableViewOpen: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.isEditableViewOpen.toggle()
            }, label: {
                Text("Open Editor")
            })
            Spacer()
        }
        .sheet(isPresented: $isEditableViewOpen) {
            EditableListView(viewModel: EditableListViewModel())
                .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    EditableListContentView()
}
