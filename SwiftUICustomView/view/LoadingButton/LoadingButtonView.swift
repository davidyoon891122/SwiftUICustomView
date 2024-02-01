//
//  LoadingButtonView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/24/24.
//

import SwiftUI

struct LoadingButtonView: View {
    
    @State var isButtonDisabled: Bool = false
    @State var isButtonLoading: Bool = false
    
    var body: some View {
        Button(action: {
            isButtonLoading.toggle()
        }, label: {
            Text("Button")
        })
        .loading(isButtonLoading)
        .disabled(isButtonDisabled)
        .buttonStyle(.main)
    }
}

#Preview {
    LoadingButtonView()
}
