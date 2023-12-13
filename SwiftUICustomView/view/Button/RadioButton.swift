//
//  RadioButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct RadioButton: View {
    @State var isActive = false
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .fill(.black.opacity(isActive ? 1 : 0))
                .frame(width: 14, height: 14)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black, lineWidth: 2)
                        .frame(width: 20, height: 20)
                }
            Text("Radio Button")
        }
        .onTapGesture {
            withAnimation {
                isActive.toggle()
            }
        }
    }
}

#Preview {
    RadioButton()
}
