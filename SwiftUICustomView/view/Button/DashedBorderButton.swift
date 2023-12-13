//
//  DashedBorderButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct DashedBorderButton: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Dashed Border Button")
                .foregroundStyle(.black)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [10]))
                        .foregroundStyle(.black)
                }
        })
    }
}

#Preview {
    DashedBorderButton()
}
