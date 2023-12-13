//
//  TextWrappedButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct TextWrappedButton: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Text Wrapped Button")
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .semibold))
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                .background(.black)
                .cornerRadius(15)
        })
    }
}

#Preview {
    TextWrappedButton()
}
