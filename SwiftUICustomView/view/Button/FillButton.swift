//
//  FillButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct FillButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Fill Button")
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(.black)
                .cornerRadius(15)
        })
    }
}

#Preview {
    FillButton()
}
