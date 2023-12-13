//
//  LikeButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct LinkButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Fill Button")
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .underline(true)
        })
    }
}

#Preview {
    LinkButton()
}
