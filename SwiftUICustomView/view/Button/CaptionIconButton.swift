//
//  CaptionIconButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct CaptionIconButton: View {
    var body: some View {
        Button(action: {}, label: {
            VStack(spacing: 2) {
                Image(systemName: "house.fill")
                    .frame(width: 52, height: 52)
                    .foregroundStyle(.white)
                    .background(.black)
                    .cornerRadius(15)
                Text("Caption Button")
                    .foregroundStyle(.black)
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 80)
            }
        })
    }
}

#Preview {
    CaptionIconButton()
}
