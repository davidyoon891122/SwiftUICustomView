//
//  ModernCheckmarkButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct ModernCheckmarkButton: View {
    @State var isActive: Bool = false
    var body: some View {
        HStack(spacing: 12) {
            Text("Full Width Checkmark")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(isActive ? .white : .black)
            
            Spacer()
            
            Image(systemName: isActive ? "checkmark.circle.fill" : "")
                .resizable()
                .foregroundStyle(isActive ? .white : .black)
                .frame(width: 24, height: 24)
                .overlay {
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(isActive ? .white : .black)
                }
        }
        .padding(.horizontal, 16)
        .frame(height: 52)
        .background(isActive ? .black : .white)
        .cornerRadius(15)
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .stroke(.black)
        }
        .onTapGesture {
            withAnimation {
                isActive.toggle()
            }
        }
    }
}

#Preview {
    ModernCheckmarkButton()
}
