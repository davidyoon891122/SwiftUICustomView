//
//  IconButtonWithFullWidth.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct IconButtonWithFullWidth: View {
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: "house.fill")
                .frame(maxWidth: .infinity, minHeight: 52)
                .foregroundStyle(.white)
                .background(.black)
                .cornerRadius(15)
        })
    }
}

#Preview {
    IconButtonWithFullWidth()
}
