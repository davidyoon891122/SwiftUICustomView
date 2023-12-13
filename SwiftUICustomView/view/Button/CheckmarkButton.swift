//
//  CheckmarkButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct CheckmarkButton: View {
    @State var isActive: Bool = false
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: isActive ? "checkmark.square.fill" : "")
                .resizable()
                .frame(width: 18, height: 18)
                .cornerRadius(2)
                .overlay {
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(.black)
                        .frame(width: 18, height: 18)
                }
            
            Text("Checkmark Button")
        }
        .onTapGesture {
            withAnimation {
                isActive.toggle()
            }
        }
    }
}

#Preview {
    CheckmarkButton()
}
