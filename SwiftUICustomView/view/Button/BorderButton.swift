//
//  BorderButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct BorderButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Border Button")
                .foregroundStyle(.black)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.black)
                )
        })
    }
}

#Preview {
    BorderButton()
}
