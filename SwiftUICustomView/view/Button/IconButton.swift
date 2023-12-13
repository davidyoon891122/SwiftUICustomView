//
//  IconButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct IconButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "house.fill")
                .frame(width: 52, height: 52)
                .foregroundStyle(.white)
                .background(.black)
                .cornerRadius(15)
        })
    }
}

#Preview {
    IconButton()
}
