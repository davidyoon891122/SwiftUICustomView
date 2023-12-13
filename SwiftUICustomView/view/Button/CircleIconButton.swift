//
//  CircleIconButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct CircleIconButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "house.fill")
                .frame(width: 52, height: 52)
                .foregroundStyle(.white)
                .background(.black)
                .cornerRadius(26)
        })
    }
}

#Preview {
    CircleIconButton()
}
