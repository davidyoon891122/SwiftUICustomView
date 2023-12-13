//
//  ToggleIconButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct ToggleIconButton: View {
    @State var isActive: Bool = false
    var body: some View {
        Image(systemName: "house.fill")
            .frame(width: 52, height: 52)
            .foregroundStyle(isActive ? .white : .black)
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
    ToggleIconButton()
}
