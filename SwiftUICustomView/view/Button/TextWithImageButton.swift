//
//  TextWithImageButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct TextWithImageButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack {
                Image(systemName: "house.fill")
                Text("Button With Icon")
            }
            .foregroundStyle(.white)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: 52)
            .background(.black)
            .cornerRadius(15)
        })
    }
}

#Preview {
    TextWithImageButton()
}
